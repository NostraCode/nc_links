part of '_index.dart';

class ProductInputView extends ReactiveStatelessWidget {
  const ProductInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductInputAppbar(),
      ),
      floatingActionButton: _dt.products.st.isEmpty ? null : const ProductInputFab(),
      body: const Column(
        children: [
          ProductInputButtons(),
          Expanded(
            child: ProductInputList(),
          ),
        ],
      ),
    );
  }
}
