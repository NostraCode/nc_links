part of '../_index.dart';

class ProductInputImages extends StatelessWidget {
  final Product product;
  const ProductInputImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: product.images.values.isEmpty
          ? const Center(child: Text('no image'))
          : Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var path in product.images.values)
                      Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: Image.file(
                          File(path),
                          fit: BoxFit.cover,
                        ),
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}
