import 'package:flutter/material.dart';
import 'package:shop/app/modules/home_controller.dart';
import 'package:get/get.dart';
import 'package:shop/app/config.dart';
import 'package:shop/app/widgets/product_card_view.dart';
import 'package:shop/app/models/product.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: ProductCardView(product:  Product())
        ),
      ),
    );
  }
}