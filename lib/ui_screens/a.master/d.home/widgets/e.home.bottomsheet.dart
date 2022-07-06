part of '../_index.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              Column(
                children: [
                  const SizedBoxH(6),
                  Container(
                    width: 35,
                    height: 4,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => nav.back(),
                    icon: const Opacity(
                      opacity: 0.8,
                      child: Icon(Icons.clear),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
          indent: 8,
          endIndent: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
