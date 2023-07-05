part of '../_index.dart';

class CodeNav extends StatelessWidget {
  const CodeNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('back to phone'),
        onPressed: () => nav.back(),
      ),
    );
  }
}
