import 'package:flutter/material.dart';

class AnimationLine extends StatefulWidget {
  @override
  _AnimationLineState createState() => _AnimationLineState();
}

class _AnimationLineState extends State<AnimationLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedBuilder(
        animation: _controller,

        builder: (_, __) {
          return ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [_controller.value, 3.0, 4.0],
                colors: [Colors.transparent, Colors.black, Colors.black],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: AssetImage('lib/assets/logo/line.png'),
              width: 189,
              height: 17,
            ),
          );
        },
      ),
    );
  }
}
