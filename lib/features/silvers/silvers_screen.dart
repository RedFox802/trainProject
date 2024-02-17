import 'package:flutter/material.dart';

class SilversScreen extends StatelessWidget {
  const SilversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  margin: const EdgeInsets.all(15),
                  child: Container(
                    color: Colors.blue[100 * (index % 9 + 1)],
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: 20, // 1000 list items
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverAppBar(
              title: Text('Sliver title'),
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground
                ],
                title: Text('App Bar Title'),
              ),
              // floating: true,
              pinned: true,
              //  snap: true,
              stretch: true,
            ),
          ),
        ],
      ),
    );
  }
}
