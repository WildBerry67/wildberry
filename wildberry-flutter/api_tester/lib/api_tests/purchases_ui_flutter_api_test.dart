import 'package:flutter/material.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:wildberry_flutter/models/offering_wrapper.dart';
import 'package:wildberry_flutter/models/package_wrapper.dart';
import 'package:wildberry_flutter/models/customer_info_wrapper.dart';
import 'package:wildberry_flutter/models/purchases_error.dart';
import 'package:wildberry_flutter/models/store_transaction.dart';

// ignore_for_file: unused_element
// ignore_for_file: unused_local_variable
class _PurchasesFlutterApiTest {
  void _checkPresentPaywall(Offering? offering) async {
    Future<PaywallResult> f1 = wildberryUI.presentPaywall();
    Future<PaywallResult> f2 = wildberryUI.presentPaywall(offering: offering);
    Future<PaywallResult> f3 =
        wildberryUI.presentPaywall(displayCloseButton: true);
    Future<PaywallResult> f4 = wildberryUI.presentPaywall(
        offering: offering, displayCloseButton: true);

    Future<PaywallResult> f5 = wildberryUI.presentPaywallIfNeeded("test");
    Future<PaywallResult> f6 =
        wildberryUI.presentPaywallIfNeeded("test", displayCloseButton: true);
    Future<PaywallResult> f7 =
        wildberryUI.presentPaywallIfNeeded("test", offering: offering);
    Future<PaywallResult> f8 = wildberryUI.presentPaywallIfNeeded("test",
        offering: offering, displayCloseButton: true);
  }

  void _checkPaywallResult(PaywallResult result) {
    switch (result) {
      case PaywallResult.notPresented:
      case PaywallResult.cancelled:
      case PaywallResult.error:
      case PaywallResult.purchased:
      case PaywallResult.restored:
        break;
    }
  }

  Widget _checkPaywallView() {
    return const Scaffold(
      body: Center(
        child: PaywallView(),
      ),
    );
  }

  Widget _checkPaywallViewWithOffering(Offering offering) {
    return Scaffold(
      body: Center(
        child: PaywallView(
          offering: offering,
        ),
      ),
    );
  }

  Widget _checkPaywallViewWithListeners(
      Offering offering,
      bool displayCloseButton,
  ) {
    return Scaffold(
      body: Center(
        child: PaywallView(
          offering: offering,
          displayCloseButton: displayCloseButton,
          onPurchaseStarted: (Package rcPackage) {
          },
          onPurchaseCompleted:
              (CustomerInfo customerInfo, StoreTransaction storeTransaction) {
          },
          onPurchaseError: (PurchasesError error) {
          },
          onRestoreCompleted: (CustomerInfo customerInfo) {
          },
          onRestoreError: (PurchasesError error) {
          },
          onDismiss: () {
          },
        ),
      ),
    );
  }

  Widget _checkPaywallFooterView() {
    return Scaffold(
      body: Center(
        child: PaywallFooterView(
          contentCreator: (double bottomPadding) {
            return Container();
          },
        ),
      ),
    );
  }

  Widget _checkPaywallFooterViewWithOffering(Offering offering) {
    return Scaffold(
      body: Center(
        child: PaywallFooterView(
          offering: offering,
          contentCreator: (double bottomPadding) {
            return Container();
          },
        ),
      ),
    );
  }

  Widget _checkPaywallFooterViewWithListeners(Offering offering) {
    return Scaffold(
      body: Center(
        child: PaywallFooterView(
          onPurchaseStarted: (Package rcPackage) {
          },
          onPurchaseCompleted:
              (CustomerInfo customerInfo, StoreTransaction storeTransaction) {
          },
          onPurchaseError: (PurchasesError error) {
          },
          onRestoreCompleted: (CustomerInfo customerInfo) {
          },
          onRestoreError: (PurchasesError error) {
          },
          onDismiss: () {
          },
          contentCreator: (double bottomPadding) {
            return Container();
          },
        ),
      ),
    );
  }
}
