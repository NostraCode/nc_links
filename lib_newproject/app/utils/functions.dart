part of '_index.dart';

class Fun {
  Fun._();

  static void handleException(e) {
    try {
      throw e;
    } on IncreaseException {
      Dialogs.alert(e.toString());
    } on RandomException {
      Dialogs.alert(e.toString());
    } on Exception {
      Dialogs.alert('Unknown exception: ${e.toString()}');
    } on Object {
      Dialogs.alert('Something really unknown: $e');
    }
  }

  static Future<String> fetchJsonAsset(String path) {
    return rootBundle.loadString(path);
  }

  static NumberFormat get formatRupiah {
    return NumberFormat.simpleCurrency(
      decimalDigits: 0,
      locale: 'id',
      name: '',
    );
  }

  // static void showDialog(Widget widget) {
  //   Get.dialog(
  //     widget,
  //     barrierColor: CnColor.dialogBarrier,
  //   );
  // }

  // static void showSnackBar({
  //   required String title,
  //   required String message,
  //   required int seconds,
  // }) {
  //   Get.snackbar(
  //     title,
  //     message,
  //     isDismissible: true,
  //     animationDuration: const Duration(milliseconds: 500),
  //     duration: Duration(seconds: seconds),
  //     margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
  //     colorText: Get.isDarkMode ? Colors.white : Colors.black,
  //     backgroundColor: Get.isDarkMode
  //         ? Colors.grey.shade800.withOpacity(0.7)
  //         : Colors.grey.shade100.withOpacity(0.6),
  //     onTap: (snack) => Get.back(),
  //   );
  // }

  // static void showBarrierLoading() {
  //   Get.dialog(
  //     const Center(child: CircularProgressIndicator()),
  //     barrierDismissible: false,
  //   );
  // }

  // static DateTime _curBackPressTime = DateTime.utc(0);

  // static Future<bool> onWillPop() {
  //   final now = DateTime.now();
  //   bool isInit() => _curBackPressTime == DateTime.utc(0);
  //   bool isGreater() =>
  //       now.difference(_curBackPressTime) > const Duration(seconds: 2);
  //   if (isInit() || isGreater()) {
  //     _curBackPressTime = now;
  //     showToast('Double tap to exit app.');
  //     return Future.value(false);
  //   }
  //   return Future.value(true);
  // }

  // static void showToast(String message) {
  //   if (GetPlatform.isAndroid || GetPlatform.isIOS || GetPlatform.isWeb) {
  //     Fluttertoast.cancel();
  //     Fluttertoast.showToast(
  //       msg: message,
  //       timeInSecForIosWeb: 2,
  //       textColor: Get.isDarkMode ? Colors.white : Colors.black,
  //       backgroundColor: Get.isDarkMode
  //           ? Colors.grey.shade800.withOpacity(0.7)
  //           : Colors.grey.shade100.withOpacity(0.6),
  //       webBgColor: Get.isDarkMode
  //           ? "linear-gradient(to right, #ffffff, #ffffff)"
  //           : "linear-gradient(to right, #000000, #000000)",
  //     );
  //   }
  // }

  // static void showBottomSheetWrap(
  //   BuildContext context,
  //   String title,
  //   Widget widget,
  // ) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20),
  //         topRight: Radius.circular(20),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return BottomSheetWrap(title: title, widget: widget);
  //     },
  //   );
  // }

  // static void showBottomSheetWrapFullWidth(
  //   BuildContext context,
  //   String title,
  //   Widget widget,
  // ) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20),
  //         topRight: Radius.circular(20),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return BottomSheetWrap.fullWidth(title: title, widget: widget);
  //     },
  //   );
  // }

  // static void showBottomSheetDraggable(
  //   BuildContext context,
  //   String title,
  //   Widget widget,
  // ) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20),
  //         topRight: Radius.circular(20),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return BottomSheetDraggable(title: title, widget: widget);
  //     },
  //   );
  // }
}
