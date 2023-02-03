part of '_index.dart';

class ConnNotification extends ReactiveStatelessWidget {
  const ConnNotification({Key? key}) : super(key: key);

  ConnServ get ct => x1ConnServ;
  ConnProv get dt => x1ConnProv.st;

  @override
  Widget build(BuildContext context) {
    if (PlatformType.isWeb) {
      return const SizedBox.shrink();
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: dt.rxIsShowNotification.st ? 20 : 0,
      child: Container(
        color: dt.rxIsOnline.st ? Colors.green[600] : Colors.grey[900],
        child: SizedBox(
          height: 20,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    child: Center(
                      child: Text(
                        dt.rxIsOnline.st ? 'Back online' : 'No connection',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
