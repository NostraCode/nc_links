part of '../_index.dart';

class HomeFirebase extends StatelessWidget {
  const HomeFirebase({Key? key}) : super(key: key);

  checkEnabled() {
    if (PlatformType.isWindows || PlatformType.isLinux) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Firebase Auth',
          subtitle: 'how auth works on firebase.',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.fbAuth),
        ),
        HomeTile(
          title: 'Firebase Firestore',
          subtitle: 'how CRUD works on firestore.',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.fbFirestore),
        ),
        HomeTile(
          title: 'Product',
          subtitle: 'firebase in real case',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.productList),
        ),
        HomeTile(
          title: 'FCM',
          subtitle: 'firebase cloud message (notification)',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.fcm),
        ),
        HomeTile(
          title: 'Analytics',
          subtitle: 'firebase analytics',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.analytics),
        ),
        HomeTile(
          title: 'Firebase AppCheck',
          subtitle: 'provides attestation of app or device authenticity.',
          enabled: checkEnabled(),
          fun: () => nav.to(Routes.appCheck),
        ),
      ],
    );
  }
}
