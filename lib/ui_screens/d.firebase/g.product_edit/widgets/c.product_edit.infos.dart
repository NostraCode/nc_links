part of '../_index.dart';

class ProductEditInfos extends StatelessWidget {
  const ProductEditInfos({Key? key}) : super(key: key);

  ProductEditCtrl get ct => x1ProductEditCtrl;
  ProductEditData get dt => x1ProductEditData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductEditReset(),
        const SizedBoxH(10),
        OnReactive(
          () => Text(dt.rmProductBuffer.st.id),
        ),
        const SizedBoxH(10),
        OnReactive(
          () => Text(dt.rmProductBuffer.st.name),
        ),
        const SizedBoxH(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Icon(Icons.remove),
              onPressed: () => ct.decrease(),
            ),
            const SizedBoxW(30),
            Column(
              children: [
                const Opacity(opacity: 0.3, child: Text('stock')),
                OnReactive(
                  () => Text('${dt.rmProductBuffer.st.total}'),
                ),
              ],
            ),
            const SizedBoxW(30),
            ElevatedButton(
              child: const Icon(Icons.add),
              onPressed: () => ct.increase(),
            ),
          ],
        ),
        const SizedBoxH(10),
      ],
    );
  }
}
