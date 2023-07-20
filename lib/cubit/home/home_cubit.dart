import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  PageController pageController = PageController();

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
