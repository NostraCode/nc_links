part of '../_index.dart';

class HomeTile extends StatelessWidget {
  final bool enabled;
  final String title;
  final String subtitle;
  final Function()? fun;
  const HomeTile({
    Key? key,
    this.enabled = true,
    required this.title,
    required this.subtitle,
    required this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        enabled: enabled,
        dense: true,
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: fun,
      ),
    );
  }
}
