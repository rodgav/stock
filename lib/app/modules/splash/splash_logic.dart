import 'package:get/get.dart';
import 'package:stock/app/data/services/auth_service.dart';
import 'package:stock/app/routes/app_pages.dart';

class SplashLogic extends GetxController {
  @override
  void onReady() {
    _init();
    super.onReady();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 3), () {
      if (AuthService.to.isLoggedIn) {
        Get.rootDelegate.offNamed(Routes.HOME);
      } else {
        Get.rootDelegate.offNamed(Routes.LOGIN);
      }
    });
  }
}
