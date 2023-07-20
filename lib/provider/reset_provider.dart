import 'package:flutter/cupertino.dart';

class ResetProvider with ChangeNotifier {
  TextEditingController resetController = TextEditingController();
  GlobalKey<FormState> resetFormKey = GlobalKey<FormState>();
  @override
  void dispose() {
    resetController.dispose();
    super.dispose();
  }
}
