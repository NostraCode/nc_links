part of '_index.dart';

class ProductInputView extends ReactiveStatelessWidget {
  const ProductInputView({Key? key}) : super(key: key);

  ProductInputCtrl get ct => x1ProductInputCtrl;
  ProductInputData get dt => x1ProductInputData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductInputAppbar(),
      ),
      floatingActionButton:
          dt.products.st.isEmpty ? null : const ProductInputFab(),
      body: Column(
        children: const [
          ProductInputButtons(),
          Expanded(
            child: ProductInputList(),
          ),
        ],
      ),
    );
  }
}
