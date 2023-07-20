class PaymentModel {
  String cvv;
  String exp;
  String name;
  String cardNum;
  PaymentModel({
    required this.cvv,
    required this.exp,
    required this.name,
    required this.cardNum,
  });

  static List<PaymentModel> paymentModel = [
    PaymentModel(cvv: "cvv", exp: "exp", name: "name", cardNum: "cardNum")
  ];
}
