import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);


  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with API server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error occurred');
      default:
        return ServerFailure('Oops something went wrong');
    }
  }
  factory ServerFailure.fromResponse(dynamic response) {
    if (response.statusCode == 404) {
      return ServerFailure('API not found');
    } else if (response.statusCode == 500) {
      return ServerFailure('Internal server error');
    } else if (response.statusCode == 400 ||
        response.statusCode == 401 ||
        response.statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure(
        response.statusMessage ?? 'Unexpected error occurred',
      );
    }
  }
}
