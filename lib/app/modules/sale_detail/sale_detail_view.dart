import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sale_detail_logic.dart';

class SaleDetailPage extends StatelessWidget {
  final logic = Get.find<SaleDetailLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('sale detail'),);
  }
}
