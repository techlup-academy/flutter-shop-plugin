import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  String name;
  String imageUrl;
  String slug;
  String price;

  ProductItem(
      {super.key,
        required this.name,
        required this.imageUrl,
        required this.slug,
        required this.price
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        padding: const EdgeInsets.only(top: 5),
        child: Card(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            elevation: 0,
            child: Column(
              children: <Widget>[Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), // Set the desired border radius
                  child:
                Image.network(
                imageUrl,
              ),),
              ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Ksh.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                      Expanded(child: Text((price != null) ? price : 'Unavailable',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Light.ttf',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),),
                      const Icon(Icons.star, size: 15, color: Colors.amber,),
                      const Text("4.4",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'Roboto-Light.ttf',
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text( (name.length <= 40 ? name : name.substring(0, 40)),
                      style: TextStyle(
                          color: (price != null)
                              ? const Color(0xFFf67426)
                              : const Color(0xFF0dc2cd),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('27 July 2023',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Light.ttf',
                              fontSize: 10,
                              fontWeight: FontWeight.w500)),
                      Expanded(child: Text('')
                      ),
                      Icon(Icons.add_shopping_cart, size: 25, color: Colors.blue,),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}