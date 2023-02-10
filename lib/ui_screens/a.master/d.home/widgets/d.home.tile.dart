part of '../_index.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? fun;
  const HomeTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.fun,
  }) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        dense: true,
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: fun,
      ),
    );
  }
}
