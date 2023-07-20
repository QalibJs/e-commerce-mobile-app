import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'hive/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("onboard");
  await Hive.openBox("Register");
  await Firebase.initializeApp();
  HiveService hive = await HiveService.instance;
  int? onboard = hive.getData('onboard');
  int? register = hive.getData('Register');
  runApp(MyApp(
    onboard: onboard,
    register: register,
  ));
}
