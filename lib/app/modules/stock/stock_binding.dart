import 'package:get/get.dart';

import 'stock_logic.dart';

class StockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockLogic());
  }
}
