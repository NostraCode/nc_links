part of '_index.dart';

class ToastX extends StatelessWidget {
  final double value;
  final String message;
  const ToastX({
    Key? key,
    required this.value,
    required this.message,
  }) : super(key: key);

  static final Tween<double> tweenOpacity = Tween<double>(begin: 0, end: 1);

  static final Tween<Offset> tweenOffset = Tween<Offset>(
    begin: const Offset(0, 40),
    end: const Offset(0, 0),
  );

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: tweenOffset.transform(value),
      child: Opacity(
        opacity: tweenOpacity.transform(value),
        child: SafeArea(
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
            child: Center(
              child: Column(
                children: [
                  const Spacer(),
                  const Spacer(),
                  const Spacer(),
                  Expanded(
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Colors.black54,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(message),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
