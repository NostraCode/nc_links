part of '../_index.dart';

class ProductEditReset extends StatelessWidget {
  const ProductEditReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxH(20),
        OutlinedButton(
          child: const Text('reset all'),
          onPressed: () => _ct.reset(),
        ),
        const SizedBoxH(10),
      ],
    );
  }
}
