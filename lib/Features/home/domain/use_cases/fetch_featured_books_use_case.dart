import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';
import 'package:booklyapp/Features/home/domain/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase
    extends UseCase<List<BookEntity>, NoParameters> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([
    NoParameters? parameters,
  ]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

abstract class UseCase<t, parameters> {
  Future<Either<Failure, t>> call([parameters? parameters]);
}

class NoParameters {}
