part of '../_index.dart';

class ProductInputButtons extends StatelessWidget {
  const ProductInputButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('add at top'),
          onPressed: () => _ct.addAt(0),
        ),
        const SizedBoxW(10),
        OnReactive(
          () => ElevatedButton(
            onPressed: _dt.products.st.isEmpty ? null : () => _ct.removeAt(0),
            child: const Text('remove at top'),
          ),
        ),
        const SizedBoxW(10),
        OnReactive(
          () => ElevatedButton(
            onPressed: _dt.products.st.isEmpty ? null : () => _ct.removeAll(),
            child: const Text('clear all'),
          ),
        ),
      ],
    );
  }
}
