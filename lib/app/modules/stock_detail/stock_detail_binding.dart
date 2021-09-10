import 'package:get/get.dart';

import 'stock_detail_logic.dart';

class StockDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockDetailLogic());
  }
}
