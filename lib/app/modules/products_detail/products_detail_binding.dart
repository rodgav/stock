import 'package:get/get.dart';

import 'products_detail_logic.dart';

class ProductsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsDetailLogic());
  }
}
