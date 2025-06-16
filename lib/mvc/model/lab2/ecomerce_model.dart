class EcomerceModel {
  String product_name;
  String description;
  String photoUrl;
  int price;
  bool isFav;

  EcomerceModel({
    required this.product_name,
    required this.description,
    required this.price,
    required this.photoUrl,
    required this.isFav,
  });
}