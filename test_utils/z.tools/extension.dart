part of '_index.dart';

extension Wait on WidgetTester {
  FutureOr<void> delayed([int? secs]) async {
    if (RM.env != Flavor.test) {
      await Future.delayed(Duration(seconds: secs ?? 2));
    }
  }

  FutureOr<void> delayedAsync([int? secs]) async {
    if (RM.env != Flavor.test) {
      await runAsync(() async {
        await Future.delayed(Duration(seconds: secs ?? 2));
      });
    }
  }

  /// "pumpX(secs)" is short code for
  ///
  /// "pump(Duration(seconds: secs))"
  pumpX([int? secs]) {
    if (RM.env != Flavor.test) {
      return pump(Duration(seconds: secs ?? 2));
    }
  }

  /// "pumpSW(secs)" is combination between :
  ///
  /// "tester.pumpAndSettle()"
  ///
  /// and
  ///
  /// "tester.delayedAsync(secs)"
  FutureOr<void> pumpAndSettleXtra([int? secs]) async {
    await pumpAndSettle();
    await delayedAsync(secs);
  }
}
