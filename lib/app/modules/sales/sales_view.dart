import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sales_logic.dart';

class SalesPage extends StatelessWidget {
  final logic = Get.find<SalesLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('sales'),);
  }
}
