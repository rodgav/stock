import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'products_logic.dart';

class ProductsPage extends StatelessWidget {
  final logic = Get.find<ProductsLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('products'),);
  }
}
