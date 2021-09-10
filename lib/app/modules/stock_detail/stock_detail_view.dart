import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stock_detail_logic.dart';

class StockDetailPage extends StatelessWidget {
  final logic = Get.find<StockDetailLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('stock detail'),);
  }
}
