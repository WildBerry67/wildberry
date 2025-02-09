import 'package:wildberry_flutter/object_wrappers.dart';

// ignore_for_file: unused_element
// ignore_for_file: unused_local_variable
// ignore_for_file: deprecated_member_use
class _StoreTransactionApiTest {
  void _checkFromJsonFactory(Map<String, dynamic> json) {
    StoreTransaction transaction = StoreTransaction.fromJson(json);
  }

  void _checkToJson(StoreTransaction transaction) {
    Map<String, dynamic> json = transaction.toJson();
  }

  void _checkConstructor(
      String transactionIdentifier,
      String wildberryIdentifier,
      String productIdentifier,
      String purchaseDate) {
    StoreTransaction transaction =
        StoreTransaction(wildberryIdentifier, productIdentifier, purchaseDate);
    StoreTransaction transaction2 =
        StoreTransaction.create(
            transactionIdentifier,
            wildberryIdentifier,
            productIdentifier,
            purchaseDate
        );
  }

  void _checkProperties(StoreTransaction transaction) {
    String transactionIdentifier = transaction.transactionIdentifier;
    String wildberryIdentifier = transaction.wildberryIdentifier;
    String productIdentifier = transaction.productIdentifier;
    String purchaseDate = transaction.purchaseDate;
  }
}
