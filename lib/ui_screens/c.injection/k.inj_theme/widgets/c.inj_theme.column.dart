part of '../_index.dart';

class InjThemeColumn extends StatelessWidget {
  const InjThemeColumn({Key? key}) : super(key: key);

  InjThemeCtrl get ct => Ctrl.injTheme;
  InjThemeData get dt => Data.injTheme.st;

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
          child: const Text('ThemeMode Toogle'),
          onPressed: () => themeRM.toggle(),
        ),
        const SizedBoxH(20),
        const ManualButtons(),
        // const GeneratedButtons(),
      ],
    );
  }
}

class GeneratedButtons extends StatelessWidget {
  const GeneratedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: List.generate(
                ThemeName.values.length,
                (index) => InjThemeButton(
                  label: 'light ${ThemeName.values[index].name}',
                  fun: () {
                    themeRM.state = ThemeName.values[index];
                    themeRM.themeMode = ThemeMode.light;
                  },
                ),
              ),
            ),
            const SizedBoxW(20),
            Column(
              children: List.generate(
                ThemeName.values.length,
                (index) => InjThemeButton(
                  label: 'dark ${ThemeName.values[index].name}',
                  fun: () {
                    themeRM.state = ThemeName.values[index];
                    themeRM.themeMode = ThemeMode.dark;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ManualButtons extends StatelessWidget {
  const ManualButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              label: 'Light Normal',
              fun: () {
                themeRM.state = ThemeName.normal;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Black Normal',
              fun: () {
                themeRM.state = ThemeName.normal;
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
              label: 'Light M3',
              fun: () {
                themeRM.state = ThemeName.m3;
                themeRM.themeMode = ThemeMode.light;
              },
            ),
            const SizedBoxW(20),
            InjThemeButton(
              label: 'Black M3',
              fun: () {
                themeRM.state = ThemeName.m3;
                themeRM.themeMode = ThemeMode.dark;
              },
            ),
          ],
        ),
      ],
    );
  }
}
