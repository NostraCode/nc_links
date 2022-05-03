part of '../_index.dart';

class RestListCard extends StatelessWidget {
  final Userx user;
  const RestListCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  RestListCtrl get ct => x1RestListCtrl;
  RestListData get dt => x1RestListData.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ListTile(
          selected: user.id == dt.rmSelectedId.st,
          horizontalTitleGap: 0,
          dense: true,
          title: Text('[${user.id}] ${user.name}'),
          subtitle: Text(user.email),
          leading: Icon(user.gender == 'male' ? Icons.male : Icons.female),
          trailing: user.status == 'active'
              ? const Icon(Icons.check, size: 18)
              : null,
          onTap: () => ct.select(user.id),
        ),
      ),
    );
  }
}
