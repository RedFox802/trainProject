import 'package:flutter/material.dart';

class BeerItem extends StatelessWidget {
  const BeerItem({
    Key? key,
    required this.beer,
    required this.description,
  }) : super(key: key);

  final String beer;
  final String description;

  EdgeInsets get _paddings =>
      const EdgeInsets.symmetric(horizontal: 16, vertical: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade50,
      padding: _paddings,
      margin: _paddings,
      child: Column(
        children: [
          Align(
            child: Text(
              beer,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(description)
        ],
      ),
    );
  }
}
