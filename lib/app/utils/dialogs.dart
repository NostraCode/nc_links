part of '_index.dart';

class Dialogs {
  static Future<T?> success<T>({
    required String titlex,
    required String messagex,
    required String labelx,
    required Function() function,
  }) {
    return nav.toDialog<T>(
      AlertDialog(
        title: Text(titlex),
        content: Text(messagex),
        actions: [
          TextButton(
            onPressed: function,
            child: Text(labelx),
          ),
        ],
      ),
      barrierDismissible: false,
      barrierColor: Colors.black54,
      // postponeToNextFrame: true,
    );
  }

  static Future<T?> alert<T>(String message) {
    return nav.toDialog<T>(
      AlertDialog(
        title: const Text('Exception Handler'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () => nav.back(),
          ),
        ],
      ),
      // postponeToNextFrame: true,
    );
  }

  static Future<T?> confirmAction<T>(String message) {
    return nav.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => nav.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => nav.forceBack(),
          ),
        ],
      ),
    );
  }

  static Future<T?> confirmExit<T>() {
    return nav.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: const Text(
          'You are about to close the app. Do you want to continue?',
        ),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => nav.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => nav.forceBack(),
          ),
        ],
      ),
    );
  }
}
