import 'package:adv_flutter/import_export/import_export.dart';

class ECommerceProductController  {
  List<EcomerceModel> products = [
    EcomerceModel(
        product_name:
            "Dove Exfoliating Body Polish - Pomegranate Seeds And Shea Butter",
        photoUrl: "lib/assets/image_assets/dove_scrub2.jpeg",
        description:
            "designed to gently remove dead skin cells, leaving skin feeling smooth, soft, and radiant.",
        price: 799,
        isFav: true),
    EcomerceModel(
        product_name:
        "Dove Exfoliating Body Polish Scrub with Brown Sugar & Coconut Butter",
        photoUrl: "lib/assets/image_assets/dove_scrub3.jpeg",
        description:
        "Dove Exfoliating Body Polish Scrub for Dry Skin with Brown Sugar & Coconut Butter, Gently Exfoliates and Moisturizes for Instant Soft & Smooth Skin, Naturally Derived Ingredients, Sulfate-Free, Coconut Scent, 298g",
        price: 799,
        isFav: false),
    EcomerceModel(
        product_name:
        "Dove Exfoliating Body Polish Scrub with Brown Sugar & Coconut Butter",
        photoUrl: "lib/assets/image_assets/dove_scrub4.jpeg",
        description:
        "Dove Exfoliating Body Polish Scrub for Dry Skin with Brown Sugar & Coconut Butter, Gently Exfoliates and Moisturizes for Instant Soft & Smooth Skin, Naturally Derived Ingredients, Sulfate-Free, Coconut Scent, 298g",
        price: 799,
        isFav: false),
    EcomerceModel(
        product_name:
        "Brown Sugar & Coconut Butter Body Scrub",
        photoUrl: "lib/assets/image_assets/dove_scrub5.jpeg",
        description:
        "A sweet coconut-scented body scrub that reveals your natural glow by deeply exfoliating skin.",
        price: 2500,
        isFav: true),
    EcomerceModel(
        product_name:
        "Dove Restoring Coconut & Cocoa Butters Body Wash",
        photoUrl: "lib/assets/image_assets/showergel_coconut.jpeg",
        description:
        "Indulge senses and pamper skin with Dove Restoring Body Wash. The creamy, deeply moisturizing body wash softens skin in just one shower.",
        price: 1200,
        isFav: true),
    EcomerceModel(
        product_name:
        "Dove Gentle Exfoliating Beads Body Wash (800ml)",
        photoUrl: "lib/assets/image_assets/exfo_showergel.jpeg",
        description:
        "Dove Exfoliating Body Polish Scrub with Crushed Almond and Mango Butter works gently to remove dry skin from the surface and reveal the healthy, glowing skin below.",
        price: 800,
        isFav: false),
  ];
  static List<EcomerceModel> cartItems = [];
  List<EcomerceModel> get product => products;

  void addItemsToCart(EcomerceModel product){
    cartItems.add(product);
  }
  void removeItemFromCart(EcomerceModel product) {
    int index = cartItems.indexWhere((element) => element == product);
    cartItems.removeAt(index);
  }

  bool isCartEmpty(){
    return cartItems.isEmpty;
  }
}
