import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stock_logic.dart';

class StockPage extends StatelessWidget {
  final logic = Get.find<StockLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('stock'),);
  }
}
