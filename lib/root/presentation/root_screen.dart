import 'package:flutter/material.dart';
import 'package:train_project/features/streams/presentation/streams_screen.dart';

import '../../features/animations/presentation/animations_screen.dart';
import '../../features/pagination/presentation/pagination_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Доступные разделы'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            _ListTile._(
              text: 'Streams',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const StreamsScreen();
                    },
                  ),
                );
              },
            ),
            _ListTile._(
              text: 'Animations',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const AnimationsScreen();
                    },
                  ),
                );
              },
            ),
            _ListTile._(
              text: 'Pagination',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const PaginationScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile._({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      title: Text(text),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 16,
      ),
    );
  }
}
