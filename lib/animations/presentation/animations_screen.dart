import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:train_project/animations/presentation/custom_animation.dart';

class AnimationsScreen extends StatefulWidget {
  const AnimationsScreen({Key? key}) : super(key: key);

  @override
  State<AnimationsScreen> createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _sizeController;
  late final Animation<double> _opacityAnimation;
  late final Animation<double> _sizeAnimation;
  late final Animation<double> _paddingsAnimation;
  late final CurvedAnimation _sizeCurvedAnimation;

  double _animatedContainerAngle = 0;
  String _sizeAnimationState = 'Скоро появится статус анимации';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _paddingsAnimation = Tween<double>(
      begin: 0.0,
      end: 60,
    ).animate(_controller);

    _sizeCurvedAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.bounceInOut,
    );

    _sizeAnimation = Tween<double>(
      begin: 100,
      end: 20,
    ).animate(_sizeCurvedAnimation)
      ..addStatusListener((status) {
        setState(() {
          log('djn bpfdg ${status.name}');
          _sizeAnimationState = status.name;
        });
      });

    _setAnimationContainerAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const indent = SizedBox(height: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _ReadyMadeAnimation._(
            angle: _animatedContainerAngle,
          ),
          indent,
          const _TwinAnimation._(),
          indent,
          _TransitionWidget._(
            opacity: _opacityAnimation,
          ),
          indent,
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.teal,
            child: Center(
              child: Text(
                'Size animation status: $_sizeAnimationState',
              ),
            ),
          ),
          indent,
          CustomAnimation(
            sizeAnimation: _sizeAnimation,
          ),
          indent,
          _AnimatedBuilder._(
            paddings: _paddingsAnimation,
          ),
        ],
      ),
    );
  }

  Future<void> _setAnimationContainerAnimation() async {
    setState(() {
      if (_animatedContainerAngle == 0) {
        _animatedContainerAngle = 90;
      } else {
        _animatedContainerAngle = 0;
      }
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      if (_animatedContainerAngle == 0) {
        _animatedContainerAngle = 90;
      } else {
        _animatedContainerAngle = 0;
      }
    });
  }
}

class _ReadyMadeAnimation extends StatelessWidget {
  const _ReadyMadeAnimation._({
    Key? key,
    required this.angle,
  }) : super(key: key);

  final double angle;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      transform: Matrix4.rotationZ(angle),
      margin: const EdgeInsets.all(24),
      height: 50,
      color: Colors.red.shade200,
      child: const Center(
        child: Text('AnimatedContainer'),
      ),
    );
  }
}

class _TwinAnimation extends StatelessWidget {
  const _TwinAnimation._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: Colors.red, end: Colors.yellow),
      duration: const Duration(seconds: 3),
      builder: (context, currentColor, child) {
        return Container(
          color: currentColor,
          margin: const EdgeInsets.all(24),
          height: 50,
          child: child,
        );
      },
      child: const Center(
        child: Text('TweenAnimationBuilder'),
      ),
    );
  }
}

class _TransitionWidget extends StatelessWidget {
  const _TransitionWidget._({
    Key? key,
    required this.opacity,
  }) : super(key: key);

  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: Container(
        color: Colors.pink,
        margin: const EdgeInsets.all(24),
        height: 50,
        child: const Center(
          child: Text('TweenAnimationBuilder'),
        ),
      ),
    );
  }
}

class _AnimatedBuilder extends StatelessWidget {
  const _AnimatedBuilder._({
    Key? key,
    required this.paddings,
  }) : super(key: key);

  final Animation<double> paddings;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: paddings,
      child: Container(
        color: Colors.lightBlue,
        margin: const EdgeInsets.all(24),
        height: 50,
        child: const Center(
          child: Text('AnimatedBuilder'),
        ),
      ),
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.all(paddings.value),
          child: child,
        );
      },
    );
  }
}
