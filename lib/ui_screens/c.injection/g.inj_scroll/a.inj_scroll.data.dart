part of '_index.dart';

class InjScrollData {
  final title = 'InjScroll';

  final rxShowFab = false.inj();

  final fmScroll = RM.injectScrolling(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
    endScrollDelay: 300,
    onScrolling: (scroll) {
      if (scroll.hasReachedMinExtent) {
        Ctrl.injScroll.dt.rxShowFab.st = false;
        logxx.i(
          InjScrollData,
          'Scrolling vertical list is in its top position',
        );
      }
      if (scroll.hasReachedMaxExtent) {
        Ctrl.injScroll.dt.rxShowFab.st = true;
        logxx.i(
          InjScrollData,
          'Scrolling vertical list is in its bottom position',
        );
      }
      if (scroll.hasStartedScrolling) {
        logxx.i(InjScrollData, 'User has just start scrolling');
      }
    },
  );
}
