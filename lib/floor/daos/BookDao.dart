import 'package:floor/floor.dart';
import 'package:flutter_projeto2_persistence/floor/models/Book.dart';

@dao
abstract class BookDao {

  @Query("Select * from Book")
  Future<List<Book>> findAll();

  @insert
  Future<int> insertBook(Book book);

  @delete
  Future<int> deleteBook(Book book);
}