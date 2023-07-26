import 'package:flutter/material.dart';
import 'package:shop/app/modules/home_controller.dart';
import 'package:get/get.dart';
import 'package:shop/app/config.dart';
import 'package:shop/app/widgets/product_card_view.dart';
import 'package:shop/app/widgets/product_item.dart';
import 'package:shop/app/models/product.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {



    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.black12,
        body: LayoutBuilder(
        builder: (context, constraints){
          double screenWidth = constraints.maxWidth;
          double desiredItemWidth = 200;
          int crossAxisCount = (screenWidth / desiredItemWidth).floor();
          return  GridView.count(
            crossAxisCount: crossAxisCount,
            padding: const EdgeInsets.all(1.0),
            childAspectRatio: 8.0/9.0,
            children: [
              ProductItem(name: 'Onions', imageUrl: 'https://picsum.photos/id/292/1200/800', slug: 'laptop', price: '40.00',),
              ProductItem(name: 'Common Beans', imageUrl: 'https://picsum.photos/id/766/1200/800', slug: 'laptop', price: '500.00',),
              ProductItem(name: 'French Beans', imageUrl: 'https://picsum.photos/id/627/1200/800', slug: 'laptop', price: '350.00',),
            ],);

        }
        ),
      ),
    );
  }
}