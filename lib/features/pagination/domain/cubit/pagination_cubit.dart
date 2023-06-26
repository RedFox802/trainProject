import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_project/features/pagination/domain/cubit/pagination_state.dart';
import 'package:train_project/features/patterns_v3/debounce_throtlle.dart';

import '../../data/repository/beer_network_repository.dart';
import '../model/pagination_async_field.dart';

class PaginationCubit extends Cubit<PaginationState> {
  PaginationCubit(this._repository)
      : super(
          const PaginationState(
            beersField: PaginationAsyncField(),
          ),
        );

  final BeerNetworkRepository _repository;

  static const _limit = 10;

  void init(){
    emit(
      state.copyWith(
        beersField: state.beersField.setInitState(),
      ),
    );
    _loadBeers();
  }

  void loadBeers() {
    return Debounce.debounce(
      'beer_pagination',
      () {
        _loadBeers();
      },
    );
  }

  Future<void> _loadBeers() async {
    try {
      if (state.beersField.isCompleted != true) {
        emit(state.copyWith(beersField: state.beersField.setLoading()));
        return _repository
            .loadBible(
          offset: _getOffset(),
          limit: _limit,
        ).then(
          (beers) {
            if (beers.isEmpty) {
              return emit(
                state.copyWith(beersField: state.beersField.setCompletion()),
              );
            }
            return emit(
              state.copyWith(
                beersField: state.beersField.addAll(
                  beers.toList(),
                ),
              ),
            );
          },
        );
      }
    } catch (error) {
      return emit(
        state.copyWith(
          beersField: state.beersField.setError(
            Exception(
              error.toString(),
            ),
          ),
        ),
      );
    }
  }

  int _getOffset() {
    final currentOffset = state.beersField.offset;
    return currentOffset + 1;
  }
}
