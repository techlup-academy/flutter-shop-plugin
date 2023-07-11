import 'package:flutter/material.dart';
import 'package:shop/app/config.dart';
import 'package:shop/app/models/product.dart';

sayHello(){
  debugPrint('hello world');
}
class ProductCardView extends StatelessWidget {
  const ProductCardView(
      {Key? key,
        required this.product,
        this.imageAlignment = Alignment.bottomCenter,
        this.onTap})
      : super(key: key);

  final Product product;
  final Alignment imageAlignment;
  final Function(String)? onTap;

  @override
  Widget build(BuildContext context) {
    final priceValue =product.price;
    const crossedValue =1000;
    return GestureDetector(
      onTap: sayHello,
      child: SizedBox(
        width: 200,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(product.image,
                      alignment: imageAlignment, fit: BoxFit.cover)),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
              child: Text(product.brand)),
          SizedBox(
              child: Text(product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).textTheme.bodyText2)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: null,
          ),
          Row(
            children: [
              Text('$priceValue /=',
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('$crossedValue Kes',
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(decoration: TextDecoration.lineThrough)),
                ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(" 10 % OFF ",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Colors.green,
                        backgroundColor: backgroundColor)),
              )
            ],
          ),
        ]),
      ),
    );
  }
}