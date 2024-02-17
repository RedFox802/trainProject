import 'package:flutter/material.dart';

class TransformsExampleScreen extends StatelessWidget {
  const TransformsExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const indent = SizedBox(height: 30);
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          RotateTransformsExample(),
          indent,
          TransformsTranslateExample(),
          indent,
          TransformsScaleExample(),
          indent,
          TransformsFlipExample(),
          indent,
          TransformsBaseExample(),
          indent,
          TransformsCombineExample(),
        ],
      ),
    );
  }
}

class RotateTransformsExample extends StatelessWidget {
  const RotateTransformsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      // Обозначает, что область нажатия на элемент будет исходной
      transformHitTests: false,
      // Может увеличить качетсво картинки, путем примеенения к ней фильтра
      filterQuality: FilterQuality.high,
      angle: 1.9,
      child: const ExampleContainer(),
    );
  }
}

class TransformsTranslateExample extends StatelessWidget {
  const TransformsTranslateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(40, 0),
      child: const ExampleContainer(),
    );
  }
}

class TransformsScaleExample extends StatelessWidget {
  const TransformsScaleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 2,
      child: const ExampleContainer(),
    );
  }
}

class TransformsFlipExample extends StatelessWidget {
  const TransformsFlipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipY: true,
      flipX: true,
      child: const ExampleContainer(),
    );
  }
}

class TransformsBaseExample extends StatelessWidget {
  const TransformsBaseExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.skew(0.2, 0.0),
      child: const ExampleContainer(),
    );
  }
}

class TransformsCombineExample extends StatelessWidget {
  const TransformsCombineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.skew(0.2, 0.0)..scale(1.2),
      child: const ExampleContainer(),
    );
  }
}

class ExampleContainer extends StatelessWidget {
  const ExampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      color: Colors.red,
      child: const Center(
        child: Text('Привет трансформы'),
      ),
    );
  }
}
