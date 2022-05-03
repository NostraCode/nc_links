part of '_index.dart';

class InjThemeView extends StatelessWidget {
  const InjThemeView({Key? key}) : super(key: key);

  InjThemeCtrl get ct => x1InjThemeCtrl;
  InjThemeData get dt => x1InjThemeData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjThemeAppbar(),
      ),
      // floatingActionButton: const InjThemeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            InjThemeColumn(),
            // InjThemeDelta(),
            // InjThemeEcho(),
          ],
        ),
      ),
    );
  }
}
