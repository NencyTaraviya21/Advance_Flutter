// import 'package:adv_flutter/import_export/import_export.dart';
//
// class CartView extends StatefulWidget {
//   CartView({super.key, required this.controller});
// EcomerceController controller = EcomerceController();
//   @override
//   State<CartView> createState() => _CartViewState();
// }
//
// class _CartViewState extends State<CartView> {
//   EcomerceController _controller = EcomerceController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cart",style: GoogleFonts.actor(
//           fontWeight: FontWeight.bold,
//           fontSize: 30,
//           color: Colors.brown[500]
//         ),),
//       ),
//       body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//       _controller.isCartEmpty()
//           ?
//         Center(
//           child: Column(
//             children: [
//               Icon(
//                 Icons.remove_shopping_cart,
//                 size: 100,
//                 color: Colors.pink[500],
//               ),
//               Text("Your cart is empty",style: TextStyle(color:Colors.pink[300] ),)
//             ],
//           ),
//         )
//           : ListView.builder(
//           itemCount: _controller.cartItems.length,
//           itemBuilder: (context, index) {
//             print("::::ITEM CAME::::");
//             EcomerceModel _product = _controller.cartItems[index];
//             return Card(
//               shadowColor: Colors.pinkAccent.withOpacity(0.3),
//               elevation: 5,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                         child: Image.asset(
//                           _product.photoUrl!,
//                           height: 200,
//                           width: 220,
//                           fit: BoxFit.cover,
//                         )),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         giveTextToCart(
//                             product_description: _product.product_name,
//                             fontsize: 16,
//                             maxlines: 3,
//                             fontweight: FontWeight.bold),
//                         SizedBox(height: 8),
//                         giveTextToCart(
//                             product_description:
//                             "Rs." + _product.price.toString(),
//                             fontsize: 16,
//                             maxlines: 1,
//                             fontweight: FontWeight.bold),
//                         SizedBox(height: 8),
//                         giveTextToCart(
//                             product_description: _product.description,
//                             fontsize: 13,
//                             maxlines: 3,
//                             color: Colors.black),
//                       ],
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.favorite,
//                             color: _product.isFav == true
//                                 ? Colors.pink[500]
//                                 : Colors.pink[100],
//                           )),
//                     ],
//                   )
//                 ],
//               ),
//             );
//           })
//         ]
//
//       )
//     );
//   }
// }
// Widget giveTextToCart(
//     {dynamic? product_description,
//       double? fontsize,
//       int? maxlines,
//       Color? color,
//       FontWeight? fontweight}) {
//   return Text(
//     product_description!,
//     style: GoogleFonts.rubik(
//         fontSize: fontsize, fontWeight: fontweight, color: color),
//     overflow: TextOverflow.ellipsis,
//     maxLines: maxlines,
//   );
// }
