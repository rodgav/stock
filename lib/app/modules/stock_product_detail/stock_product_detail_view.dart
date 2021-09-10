import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stock_product_detail_logic.dart';

class StockProductDetailPage extends StatelessWidget {
  final logic = Get.find<StockProductDetailLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('stock product detail'),);
  }
}
