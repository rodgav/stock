import 'package:get/get.dart';

import 'sale_detail_logic.dart';

class SaleDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SaleDetailLogic());
  }
}
