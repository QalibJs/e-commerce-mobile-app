import 'package:flutter/cupertino.dart';

class PaymentProvider with ChangeNotifier {
//
  TextEditingController exp = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  PageController pageController = PageController();
  //
  GlobalKey<FormState> cvvAndExpFormkey = GlobalKey<FormState>();
  //

//
//
  //
  GlobalKey<FormState> crdKey = GlobalKey<FormState>();
  GlobalKey<FormState> nameKey = GlobalKey<FormState>();
  GlobalKey<FormState> cvvKey = GlobalKey<FormState>();
  GlobalKey<FormState> expKey = GlobalKey<FormState>();
  TextEditingController crdName = TextEditingController();
  TextEditingController cvvCode = TextEditingController();
  TextEditingController expCode = TextEditingController();
  TextEditingController crdNumCode = TextEditingController();

  //
//
//

  double currentindex = 0;
  bool isSelected = false;



  void select() {
    isSelected = !isSelected;
    notifyListeners();
  }

  void changePage(double index) {
    currentindex = index;
  }

  @override
  void dispose() {
    crdNumCode.dispose();
    expCode.dispose();
    cvvCode.dispose();
    crdName.dispose();
    pageController.dispose();
    name.dispose();
    cvv.dispose();
    cardNumber.dispose();
    exp.dispose();

    super.dispose();
  }
}
