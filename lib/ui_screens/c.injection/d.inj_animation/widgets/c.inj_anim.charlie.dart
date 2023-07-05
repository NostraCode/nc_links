part of '../_index.dart';

class InjAnimCharlie extends StatelessWidget {
  const InjAnimCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnAnimationBuilder(
      listenTo: _dt.animation1,
      builder: (animate) {
        final widthx = animate.fromTween(
          (currentValue) => Tween(begin: 200.0, end: 100.0),
          'widthx',
        );
        final heightx = animate.fromTween(
          (currentValue) => 100.0.tweenTo(50.0),
          'heightx',
        );
        final colorx = animate.fromTween(
          (currentValue) => Colors.yellow.tweenTo(Colors.blue),
        );
        final alignmentx = animate.fromTween(
          (currentValue) => AlignmentGeometryTween(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        );

        return Container(
          width: widthx,
          height: heightx,
          color: colorx,
          alignment: alignmentx,
          child: const FlutterLogo(size: 75),
        );
      },
    );
  }
}
