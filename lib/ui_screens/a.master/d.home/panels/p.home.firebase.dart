part of '../_index.dart';

class HomeFirebase extends StatelessWidget {
  const HomeFirebase({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Firebase Auth',
          subtitle: 'how auth works on firebase.',
          fun: () => nav.to(Routes.fbAuth),
        ),
        HomeTile(
          title: 'Firebase Firestore',
          subtitle: 'how CRUD works on firestore.',
          fun: () => nav.to(Routes.fbFirestore),
        ),
        HomeTile(
          title: 'Product',
          subtitle: 'firebase in real case',
          fun: () => nav.to(Routes.productList),
        ),
      ],
    );
  }
}
