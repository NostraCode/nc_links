part of '_index.dart';

class InjThemeView extends StatelessWidget {
  const InjThemeView({Key? key}) : super(key: key);

  InjThemeCtrl get ct => Ctrl.injTheme;
  InjThemeData get dt => Data.injTheme.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjThemeAppbar(),
      ),
      // floatingActionButton: const InjThemeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeColumn(),
            // InjThemeDelta(),
            // InjThemeEcho(),
          ],
        ),
      ),
    );
  }
}
