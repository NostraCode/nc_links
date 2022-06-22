part of '../_index.dart';

class HomeInj extends StatelessWidget {
  const HomeInj({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Inj State',
          subtitle: 'state management on states rebuilder',
          fun: () => nav.to(Routes.injState),
        ),
        HomeTile(
          title: 'Inj Persist',
          subtitle: 'injected persistance state',
          fun: () => nav.to(Routes.injPersist),
        ),
        HomeTile(
          title: 'Inj Pessimistic',
          subtitle: 'injected state with exception handler',
          fun: () => nav.to(Routes.injPessimistic),
        ),
        HomeTile(
          title: 'Inj Tab PageView',
          subtitle: 'injected tab controller',
          fun: () => nav.to(Routes.injTab),
        ),
        HomeTile(
          title: 'Inj Animation',
          subtitle: 'injected animation controller',
          fun: () => nav.to(Routes.injAnim),
        ),
        HomeTile(
          title: 'Inj Theme',
          subtitle: 'injected theme',
          fun: () => nav.to(Routes.injTheme),
        ),
        HomeTile(
          title: 'Inj Scroll',
          subtitle: 'injected Scroll Controller',
          fun: () => nav.to(Routes.injScroll),
        ),
        HomeTile(
          title: 'Inj Form',
          subtitle: 'injected From & TextField',
          fun: () => nav.to(Routes.injForm),
        ),
        HomeTile(
          title: 'Inj i18n',
          subtitle: 'injected Internationalization',
          fun: () => nav.to(Routes.injI18n),
        ),
      ],
    );
  }
}
