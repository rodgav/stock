import 'package:get/get.dart';

import 'sales_logic.dart';

class SalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesLogic());
  }
}
