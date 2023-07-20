import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<int> {
  LanguageCubit() : super(0);

  int currentIndex = 0;

  void changeLanguage(int index) {
    currentIndex = index;
    emit(state);
  }
}
