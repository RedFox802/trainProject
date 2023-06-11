import 'package:flutter/material.dart';

class CustomAnimation extends AnimatedWidget {
  const CustomAnimation({
    super.key,
    required this.sizeAnimation,
  }) : super(
          listenable: sizeAnimation,
        );

  final Animation<double> sizeAnimation;

  @override
  Widget build(BuildContext context) {
    final size = sizeAnimation.value;
    return Container(
      color: Colors.teal,
      height: size,
      child: const Center(
        child: Text('CustomAnimatedWidget'),
      ),
    );
  }
}
