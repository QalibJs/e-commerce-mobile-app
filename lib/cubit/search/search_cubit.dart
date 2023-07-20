import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  bool isOpen = false;

  void openInput() {
    isOpen = true;

    emit(InputOpen());
  }

  void closeInput() {
    isOpen = false;

    emit(SearchInitial());
  }
}
