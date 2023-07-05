part of '../_index.dart';

class PhoneNav extends StatelessWidget {
  const PhoneNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          height: 40,
          child: TextButton(
            child: const Text('go to code'),
            onPressed: () => nav.to(Routes.code),
          ),
        ),
        const SizedBoxH(20),
        SizedBox(
          width: 200,
          height: 40,
          child: TextButton(
            child: const Text('back to login'),
            onPressed: () => nav.toReplacement(Routes.login),
          ),
        ),
      ],
    );
  }
}
