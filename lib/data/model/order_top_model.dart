class OrderTopModel {
  String title;
  OrderTopModel({
    required this.title,
  });
  static List<OrderTopModel> orderTopModels = [
    OrderTopModel(title: "Sifarişlər"),
    OrderTopModel(title: "Ikinci əl"),
    OrderTopModel(title: "Dijital servis"),
    OrderTopModel(title: "Market"),
  ];
}
