import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sales_detail_logic.dart';

class SalesDetailPage extends StatelessWidget {
  final logic = Get.find<SalesDetailLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('sales detail'),);
  }
}
