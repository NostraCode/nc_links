part of '_index.dart';

class Fun {
  Fun._();

  static dynamic handleException(obj) {
    String str = '';
    try {
      throw obj;
    } on DioError catch (e) {
      str = dioErrorMessage(e);
    } on SocketException catch (e) {
      str = e.message;
    } on FormatException catch (e) {
      str = e.message;
    } on FirebaseException catch (e) {
      str = e.message ?? e.code;
    } on Exception {
      str = 'Unknown exception: ${obj.toString()}';
    } on Object {
      str = 'Something really unknown: ${obj.toString()}';
    }
    Dialogs.alert(str);
    logx.e(str);
  }

  static String dioErrorMessage(DioError e) {
    if (e.type == DioErrorType.response) {
      final str1 = e.response?.statusCode.toString() ?? '';
      final str2 = e.response?.statusMessage ?? '';
      return '[$str1] $str2';
    } else {
      return e.message;
    }
  }

  static dynamic handleDummyException(obj) {
    String str = '';
    try {
      throw obj;
    } on IncreaseException catch (e) {
      str = e.message;
    } on RandomException catch (e) {
      str = e.message;
    }
    logx.e(str);
    Dialogs.alert(str);
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
}
