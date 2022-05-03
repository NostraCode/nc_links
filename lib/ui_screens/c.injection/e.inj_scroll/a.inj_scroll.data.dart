part of '_index.dart';

final x1InjScrollData = RM.inject<InjScrollData>(
  () => InjScrollData(),
  debugPrintWhenNotifiedPreMessage: 'InjScrollData',
  sideEffects: SideEffects(initState: () => x1InjScrollCtrl.init()),
);

class InjScrollData {
  final title = 'InjScroll';

  final rmShowFab = false.inj();

  final fmScroll = RM.injectScrolling(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
    endScrollDelay: 300,
    onScrolling: (scroll) {
      if (scroll.hasReachedMinExtent) {
        x1InjScrollCtrl.dt.rmShowFab.st = false;
        loggerx(InjScrollData).i(
          'Scrolling vertical list is in its top position',
        );
      }
      if (scroll.hasReachedMaxExtent) {
        x1InjScrollCtrl.dt.rmShowFab.st = true;
        loggerx(InjScrollData).i(
          'Scrolling vertical list is in its bottom position',
        );
      }
      if (scroll.hasStartedScrolling) {
        loggerx(InjScrollData).i('User has just start scrolling');
      }
    },
  );
}
