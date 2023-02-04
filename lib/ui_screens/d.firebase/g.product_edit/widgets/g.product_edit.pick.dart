part of '../_index.dart';

class ProductEditPick extends StatelessWidget {
  const ProductEditPick({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxH(20),
        OutlinedButton(
          child: const Text('add images'),
          onPressed: () => ct.pickImages(),
        ),
        const SizedBoxH(20),
      ],
    );
  }
}
