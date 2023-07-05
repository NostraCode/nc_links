part of '_index.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 60, child: Placeholderx()),
        SizedBoxH(20),
        SizedBox(height: 60, child: Placeholderx()),
        SizedBoxH(20),
        SizedBox(height: 60, child: Placeholderx()),
        SizedBoxH(20),
      ],
    );
  }
}
