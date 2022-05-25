part of '_index.dart';

class InjI18nView extends ReactiveStatelessWidget {
  const InjI18nView({Key? key}) : super(key: key);

  InjI18nCtrl get ct => x1InjI18nCtrl;
  InjI18nData get dt => x1InjI18nData.st;

  static final _counter = 0.inj();
  static final unselectedStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
  );

  bool checkLocale(String languageCode) {
    final isNotSystem = i18nRM.locale is! SystemLocale;
    final isCorrectLocale = i18nRM.locale == Locale(languageCode);
    return isNotSystem && isCorrectLocale;
  }

  @override
  Widget build(BuildContext context) {
    final _i18n = i18nRM.of(context);
    final textStyle = Theme.of(context).textTheme.headline6;

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
                  child: const Text('system'),
                  style: i18nRM.locale is SystemLocale ? null : unselectedStyle,
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('en'),
                  child: const Text('English'),
                  style: checkLocale('en') ? null : unselectedStyle,
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('es'),
                  child: const Text('spanish'),
                  style: checkLocale('es') ? null : unselectedStyle,
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => i18nRM.locale = const Locale('ar'),
                  child: const Text('arabic'),
                  style: checkLocale('ar') ? null : unselectedStyle,
                ),
              ],
            ),
            const Spacer(),
            Text(
              _i18n.welcome('Bob'),
              style: textStyle,
            ),
            const Divider(),
            Text(
              _i18n.gender('male'),
              style: textStyle,
            ),
            Text(
              _i18n.gender('female'),
              style: textStyle,
            ),
            Text(
              _i18n.gender('other'),
              style: textStyle,
            ),
            const Divider(),
            Text(
              _i18n.plural(_counter.state),
              style: textStyle,
            ),
            Text(
              _i18n.formattedNumber(_counter.state * 10000000),
              style: textStyle,
            ),
            Text(
              _i18n.date(DateTime.now()),
              style: textStyle,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
