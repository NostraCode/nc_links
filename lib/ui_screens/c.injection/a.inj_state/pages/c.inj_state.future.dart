part of '../_index.dart';

class InjStateFuture extends StatelessWidget {
  const InjStateFuture({Key? key}) : super(key: key);

  InjStateCtrl get ct => x1InjStateCtrl;
  InjStateData get dt => x1InjStateData.st;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ct.refresh(),
      child: ListView(
        children: [
          const SizedBoxH(10),
          const Center(child: Text('on mobile')),
          const Center(child: Text('pull to refresh')),
          const SizedBoxH(50),
          const Center(
            child: Text(
              "note => state on service's data",
              style: TextStyle(color: Colors.orange),
            ),
          ),
          const SizedBoxH(50),
          Center(
            child: OnReactive(
              () => Text('${dt.rxIntList.st}'),
            ),
          ),
          const SizedBoxH(50),
          Center(
            child: OnBuilder<int>.orElse(
              listenTo: dt.rxIntFuture,
              onWaiting: () => const Text('loading...'),
              orElse: (data) => Text('$data'),
            ),
          ),
          const SizedBoxH(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('increase'),
                onPressed: () => ct.futureIncrease(),
              ),
              const SizedBoxW(10),
              ElevatedButton(
                child: const Text('random'),
                onPressed: () => ct.futureRandom(),
              ),
              const SizedBoxW(10),
              ElevatedButton(
                child: const Text('refresh'),
                onPressed: () => ct.refresh(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
