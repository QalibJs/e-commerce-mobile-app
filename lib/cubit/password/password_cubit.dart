import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../hive/hive_service.dart';
import 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());
  bool passwordVisible = false;
  
  //Register controllers
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerUserNameController = TextEditingController();
  TextEditingController registerPhoneNumberController =
      TextEditingController(text: "+994 ");
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerAgainPasswordController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //Login controllers
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

  void securedPassword() {
    passwordVisible = !passwordVisible;
    emit(PasswordVisible(passwordVisible: passwordVisible));
  }

  void saveRegisterState() {
    HiveService.instance.then((value) {
      value.saveData("Register", 2);
    });
  }

  @override
  Future<void> close() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    registerUserNameController.dispose();
    registerAgainPasswordController.dispose();
    registerPasswordController.dispose();
    registerEmailController.dispose();
    registerPhoneNumberController.dispose();
    return super.close();
  }
}
