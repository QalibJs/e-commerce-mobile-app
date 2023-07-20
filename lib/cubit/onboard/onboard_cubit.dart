import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../hive/hive_service.dart';

class OnboardCubit extends Cubit<int> {
  OnboardCubit() : super(0);

  final PageController? controller = PageController();
  int currentIndex = 0;

  void getIndex(int index) {
    currentIndex = index;
    emit(currentIndex);
  }

  void onContinue() {
    currentIndex++;
    controller!.jumpToPage(currentIndex);
    if (currentIndex == 2) {
      HiveService.instance.then((hive) {
        hive.saveData('onboard', 1);
      });
    }
    emit(currentIndex);
  }

  void onBack() {
    currentIndex--;
    controller!.jumpToPage(currentIndex);
    emit(currentIndex);
  }

  @override
  Future<void> close() {
    controller!.dispose();
    return super.close();
  }
}
