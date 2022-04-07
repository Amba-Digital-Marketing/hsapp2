import 'models/loan_model.dart';

abstract class LoanRepository {
  const LoanRepository();

  Future<List<LoanModel>> searchBooks(String name);
  Future<void> addSoloBook(String name);
}
