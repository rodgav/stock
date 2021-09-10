import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'products_detail_logic.dart';

class ProductsDetailPage extends StatelessWidget {
  final logic = Get.find<ProductsDetailLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('products details'),);
  }
}
