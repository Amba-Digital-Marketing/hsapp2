import 'loan_repository.dart';
import 'models/loan_model.dart';

class FirestoreBook implements BookRepository {
  @override
  Future<void> addSoloBook(String name) {
    // TODO: implement addSoloBook
    throw UnimplementedError();
  }

  @override
  Future<List<LoanModel>> searchBooks(String name) {
    // TODO: implement searchBooks
    throw UnimplementedError();
  }
}
