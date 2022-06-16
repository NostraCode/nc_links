part of '_index.dart';

class Fun {
  Fun._();

  static void handleException(obj) {
    try {
      throw obj;
    } on IncreaseException catch (e) {
      Dialogs.alert(e.message);
    } on RandomException catch (e) {
      Dialogs.alert(e.message);
    } on DioError catch (e) {
      Dialogs.alert(e.response?.statusMessage ?? e.message);
    } on Exception {
      Dialogs.alert('Unknown exception: ${obj.toString()}');
    } on Object {
      Dialogs.alert('Something really unknown: $obj');
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

  static void showOverlayLoading() {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
  }

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
}
