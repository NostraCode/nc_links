part of '../_index.dart';

class HomePanel extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final Widget widget;
  const HomePanel({
    Key? key,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.widget,
  }) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ExpansionPanelList(
          expandedHeaderPadding: const EdgeInsets.all(0),
          animationDuration: 400.milliseconds,
          elevation: 0,
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: dt.listOfStatus[index].st,
              headerBuilder: (context, isExpanded) => ListTile(
                title: Text(title),
                subtitle: subtitle.isEmpty ? null : Text(subtitle),
              ),
              body: Container(
                color: Colors.grey.withOpacity(0.5),
                padding: const EdgeInsets.all(3),
                child: widget,
              ),
            )
          ],
          expansionCallback: (_, __) => ct.togglePanel(index),
        ),
      ),
    );
  }
}
