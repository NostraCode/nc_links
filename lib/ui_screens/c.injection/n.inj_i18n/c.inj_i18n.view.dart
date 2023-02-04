part of '_index.dart';

class InjI18nView extends ReactiveStatelessWidget {
  const InjI18nView({Key? key}) : super(key: key);

  InjI18nCtrl get ct => Ctrl.injI18n;
  InjI18nData get dt => Data.injI18n.st;

  static final _counter = 0.inj();
  // static final unselectedStyle = ElevatedButton.styleFrom(
  //   primary: Colors.white,
  //   onPrimary: Colors.blue,
  // );
  static final unselectedStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.blue,
  );

  bool checkLocale(String languageCode) {
    final isNotSystem = i18nRM.locale is! SystemLocale;
    final isCorrectLocale = i18nRM.locale == Locale(languageCode);
    return isNotSystem && isCorrectLocale;
  }

  @override
  Widget build(BuildContext context) {
    final i18n = i18nRM.of(context);
    final textStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjI18nAppbar(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counter.state++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => i18nRM.locale = SystemLocale(),
                  style: i18nRM.locale is SystemLocale ? null : unselectedStyle,
                  child: const Text('system'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('en'),
                  style: checkLocale('en') ? null : unselectedStyle,
                  child: const Text('English'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('es'),
                  style: checkLocale('es') ? null : unselectedStyle,
                  child: const Text('spanish'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('ar'),
                  style: checkLocale('ar') ? null : unselectedStyle,
                  child: const Text('arabic'),
                ),
              ],
            ),
            const Spacer(),
            Text(
              i18n.welcome('Bob'),
              style: textStyle,
            ),
            const Divider(),
            Text(
              i18n.gender('male'),
              style: textStyle,
            ),
            Text(
              i18n.gender('female'),
              style: textStyle,
            ),
            Text(
              i18n.gender('other'),
              style: textStyle,
            ),
            const Divider(),
            Text(
              i18n.plural(_counter.state),
              style: textStyle,
            ),
            Text(
              i18n.formattedNumber(_counter.state * 10000000),
              style: textStyle,
            ),
            Text(
              i18n.date(DateTime.now()),
              style: textStyle,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
