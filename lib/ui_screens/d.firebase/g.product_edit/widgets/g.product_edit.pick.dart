part of '../_index.dart';

class ProductEditPick extends StatelessWidget {
  const ProductEditPick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxH(20),
        OutlinedButton(
          child: const Text('add images'),
          onPressed: () => _ct.pickImages(),
        ),
        const SizedBoxH(20),
      ],
    );
  }
}
