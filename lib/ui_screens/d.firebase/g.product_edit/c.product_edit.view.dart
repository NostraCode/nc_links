part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductEditAppbar(),
      ),
      floatingActionButton: ProductEditFab(),
      body: Center(
        child: Column(
          children: [
            ProductEditInfos(),
            ProductEditImages(),
            // Expanded(
            //   child: ProductEditInfos(),
            // ),
            // Expanded(
            //   child: ProductEditImages(),
            // ),
            ProductEditPick(),
          ],
        ),
      ),
    );
  }
}
