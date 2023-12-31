part of '../_index.dart';

class InjStateWidgets extends StatelessWidget {
  const InjStateWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "note => state on controller's data",
            style: TextStyle(color: Colors.orange),
          ),
          const SizedBoxH(20),
          const Divider(),
          const InjStateCharlieX(),
          const Divider(),
          const InjStateBigText('OnReactive'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InjStateColumnX(
                textA: 'build once',
                textB: 'random',
                child: InjStateBigText('${Random().nextInt(100)}'),
              ),
              InjStateColumnX(
                textA: 'mutable',
                textB: 'rx0',
                child: OnReactive(
                  () => InjStateBigText('${_dt.int0}'),
                ),
              ),
              InjStateColumnX(
                textA: 'immutable',
                textB: 'rx1',
                child: OnReactive(
                  () => InjStateBigText('${_dt.rxInt1.st}'),
                ),
              ),
            ],
          ),
          const Divider(),
          const InjStateBigText('OnBuilder'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InjStateColumnX(
                textA: 'build once',
                textB: 'random',
                child: InjStateBigText('${Random().nextInt(100)}'),
              ),
              InjStateColumnX(
                textA: 'widget-like',
                textB: 'rx1',
                child: OnBuilder<int>.all(
                  listenTo: _dt.rxInt1,
                  onWaiting: () => const Text('loading...'),
                  onError: (_, __) => const Text('error'),
                  onData: (data) => InjStateBigText('$data'),
                ),
              ),
              InjStateColumnX(
                textA: 'method-like',
                textB: 'rx1',
                child: _dt.rxInt1.rebuild.onAll(
                  onWaiting: () => const Text('loading...'),
                  onError: (_, __) => const Text('error'),
                  onData: (data) => InjStateBigText('$data'),
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBoxH(20),
          ElevatedButton(
            child: const Text('increase'),
            onPressed: () => _ct.increase(),
          ),
        ],
      ),
    );
  }
}

class InjStateCharlieX extends ReactiveStatelessWidget {
  const InjStateCharlieX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // rebuild test
        const InjStateBigText('ReactiveStatelessWidget'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InjStateColumnX(
              textA: 'always rebuild',
              textB: 'random',
              child: InjStateBigText('${Random().nextInt(100)}'),
            ),
            InjStateColumnX(
              textA: 'mutable',
              textB: 'rx0',
              child: InjStateBigText('${_dt.int0}'),
            ),
            InjStateColumnX(
              textA: 'immutable',
              textB: 'rx1',
              child: InjStateBigText('${_dt.rxInt1.st}'),
            ),
          ],
        ),
      ],
    );
  }
}
