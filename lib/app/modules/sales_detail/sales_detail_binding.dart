import 'package:get/get.dart';

import 'sales_detail_logic.dart';

class SalesDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesDetailLogic());
  }
}
