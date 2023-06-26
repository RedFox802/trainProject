import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_project/features/pagination/domain/model/pagination_async_field.dart';

import '../domain/cubit/pagination_cubit.dart';
import '../domain/cubit/pagination_state.dart';
import 'beer_item.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({Key? key}) : super(key: key);

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset >= (_controller.position.maxScrollExtent * 0.6)) {
        _loadBeers();
      }
    });
    _init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination'),
        centerTitle: true,
      ),
      body: BlocBuilder<PaginationCubit, PaginationState>(
        builder: (BuildContext context, state) {
          final beerField = state.beersField;
          if (beerField.hasInitialLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (beerField.hasInitialError) {
            return Center(
              child: Column(
                children: [
                  const Text('Error!'),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: _loadBeers,
                    child: const Text('Refresh'),
                  ),
                ],
              ),
            );
          }
          if (beerField.data != null) {
            return ListView.builder(
              controller: _controller,
              itemCount: beerField.data!.length,
              itemBuilder: (context, index) {
                final beer = BeerItem(
                  beer: beerField.data!.elementAt(index).name,
                  description: beerField.data!.elementAt(index).description,
                );
                if (index == beerField.data!.length - 1) {
                  if (beerField.hasNextPageLoading) {
                    return Column(
                      children: [
                        beer,
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    );
                  }
                  if (beerField.hasNextPageError) {
                    return Column(
                      children: [
                        beer,
                        const Text('Error'),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: _loadBeers,
                          child: const Text('Refresh'),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  }
                }
                return beer;
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  void _loadBeers() => context.read<PaginationCubit>().loadBeers();

  void _init() => context.read<PaginationCubit>().init();
}
