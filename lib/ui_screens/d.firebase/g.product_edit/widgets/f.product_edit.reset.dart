part of '../_index.dart';

class ProductEditReset extends StatelessWidget {
  const ProductEditReset({Key? key}) : super(key: key);

  ProductEditCtrl get ct => x1ProductEditCtrl;
  ProductEditData get dt => x1ProductEditData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxH(20),
        OutlinedButton(
          child: const Text('reset all'),
          onPressed: () => ct.reset(),
        ),
        const SizedBoxH(10),
      ],
    );
  }
}
