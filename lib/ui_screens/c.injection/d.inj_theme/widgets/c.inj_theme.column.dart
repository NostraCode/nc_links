part of '../_index.dart';

class InjThemeColumn extends StatelessWidget {
  const InjThemeColumn({Key? key}) : super(key: key);

  InjThemeCtrl get ct => x1InjThemeCtrl;
  InjThemeData get dt => x1InjThemeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('ThemeMode by System'),
          onPressed: () => themeRM.themeMode = ThemeMode.system,
        ),
        const SizedBoxH(20),
        ElevatedButton(
          child: const Text('Toogle ThemeMode'),
          onPressed: () => themeRM.toggle(),
        ),
        const SizedBoxH(20),

        // ----- ----- ----- ----- ----- ----- ----- ----- -----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeButton(
              label: 'Light Master',
              fun: () {
                themeRM.state = ThemeName.master;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Black Master',
              fun: () {
                themeRM.state = ThemeName.master;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
        const SizedBoxH(20),
        // ----- ----- ----- ----- ----- ----- ----- ----- -----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeButton(
              label: 'Light Blue',
              fun: () {
                themeRM.state = ThemeName.bluish;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Dark Blue',
              fun: () {
                themeRM.state = ThemeName.bluish;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
        const SizedBoxH(20),
        // ----- ----- ----- ----- ----- ----- ----- ----- -----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeButton(
              label: 'Light Green',
              fun: () {
                themeRM.state = ThemeName.greenish;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Dark Green',
              fun: () {
                themeRM.state = ThemeName.greenish;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
        const SizedBoxH(20),
        // ----- ----- ----- ----- ----- ----- ----- ----- -----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeButton(
              label: 'Light Purple',
              fun: () {
                themeRM.state = ThemeName.purplish;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Dark Purple',
              fun: () {
                themeRM.state = ThemeName.purplish;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
        const SizedBoxH(20),
        // ----- ----- ----- ----- ----- ----- ----- ----- -----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjThemeButton(
              label: 'Light Norxal',
              fun: () {
                themeRM.state = ThemeName.normal;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Black Norxal',
              fun: () {
                themeRM.state = ThemeName.normal;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
      ],
    );
  }
}
