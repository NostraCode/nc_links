part of '../_index.dart';

class ProductInputButtons extends StatelessWidget {
  const ProductInputButtons({Key? key}) : super(key: key);

  ProductInputCtrl get ct => x1ProductInputCtrl;
  ProductInputData get dt => x1ProductInputData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('add at top'),
          onPressed: () => ct.addAt(0),
        ),
        const SizedBoxW(10),
        OnReactive(
          () => ElevatedButton(
            child: const Text('remove at top'),
            onPressed: dt.products.st.isEmpty ? null : () => ct.removeAt(0),
          ),
        ),
        const SizedBoxW(10),
        OnReactive(
          () => ElevatedButton(
            child: const Text('clear all'),
            onPressed: dt.products.st.isEmpty ? null : () => ct.removeAll(),
          ),
        ),
      ],
    );
  }
}
