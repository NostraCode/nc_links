part of '_index.dart';

class ModalSettings extends StatelessWidget {
  const ModalSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: const Text('sign out'),
          leading: const Icon(Icons.power_settings_new, size: 22),
          onTap: () => nav.toReplacement(Routes.login),
        ),
      ],
    );
  }
}
