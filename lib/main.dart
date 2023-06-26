import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_project/features/pagination/data/repository/beer_network_repository.dart';
import 'package:train_project/features/pagination/domain/cubit/pagination_cubit.dart';
import 'package:train_project/root/presentation/root_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PaginationCubit(BeerNetworkRepository()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RootScreen(),
      ),
    );
  }
}
