import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/core/utils/functions/safe_books.dart';

abstract class HomeRemoteDataSources {
  Future<List<BookEntity>> featuredBooks();
  Future<List<BookEntity>> newestBooks();
}

class HomeRemoteDataSourcesImp extends HomeRemoteDataSources {
  final ApiService api;
  HomeRemoteDataSourcesImp(this.api);
  @override
  Future<List<BookEntity>> featuredBooks() async {
    var data = await api.get(endPoint: kFeaturedBooksEndPoint);
    List<BookEntity> books = getBooksList(data);
    safeBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> newestBooks() async {
    var data = await api.get(endPoint: kNewestBooksEndPoint);
    List<BookEntity> books = getBooksList(data);
    safeBooksData(books, kNewestBox);
    return books;
  } 
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var item in data["items"]) {
    books.add(BookModel.fromJson(item));
  }
  return books;
}

