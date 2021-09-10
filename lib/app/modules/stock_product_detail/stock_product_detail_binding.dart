import 'package:get/get.dart';

import 'stock_product_detail_logic.dart';

class StockProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockProductDetailLogic());
  }
}
