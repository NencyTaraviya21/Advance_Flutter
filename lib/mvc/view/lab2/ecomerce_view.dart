import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/utils/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class EcomerceView extends StatefulWidget {
  EcomerceView({super.key});

  @override
  State<EcomerceView> createState() => _EcomerceViewState();
}

class _EcomerceViewState extends State<EcomerceView> {
  EcomerceController _controller = EcomerceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Dove',
            style: TextStyle(
                fontSize: 30,
                color: Colors.pinkAccent[200],
                fontFamily: 'Caveat-Bold.ttf'),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pinkAccent[200],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.pinkAccent[200],
                  )),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: _controller.products.length,
            itemBuilder: (context, index) {
              EcomerceModel _product = _controller.products[index];
              return Card(
                shadowColor: Colors.pinkAccent.withOpacity(0.3),
                elevation: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: Image.asset(
                        _product.photoUrl!,
                        height: 200,
                        width: 220,
                        fit: BoxFit.cover,
                      )),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          giveTextToProduct(
                              product_description: _product.product_name,
                              fontsize: 16,
                              maxlines: 3,
                              fontweight: FontWeight.bold),
                          SizedBox(height: 8),
                          giveTextToProduct(
                              product_description:
                                  "Rs." + _product.price.toString(),
                              fontsize: 16,
                              maxlines: 1,
                              fontweight: FontWeight.bold),
                          SizedBox(height: 8),
                          giveTextToProduct(
                              product_description: _product.description,
                              fontsize: 13,
                              maxlines: 3,
                              color: Colors.black),
                        ],
                      ),
                    )),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: _product.isFav==true?Colors.pink[500]:Colors.pink[100],)),
                        IconButton(onPressed: (){}, icon: Container(
                            width: 28,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[300],
                            ),
                            margin: EdgeInsets.all(2.0),
                            child: Icon(Icons.add_rounded ))),
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}

Widget giveTextToProduct(
    {dynamic? product_description,
    double? fontsize,
    int? maxlines,
    Color? color,
    FontWeight? fontweight}) {
  return Text(
    product_description!,
    style: GoogleFonts.rubik(
        fontSize: fontsize, fontWeight: fontweight, color: color),
    overflow: TextOverflow.ellipsis,
    maxLines: maxlines,
  );
}
