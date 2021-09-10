import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';
import 'package:stock/app/data/providers/data_provider.dart';
import 'package:stock/app/data/repositorys/data_repository.dart';
import 'package:stock/utils/encrypt_helper.dart';

class DependencyInjection {
  static void init() {
    Get.put<EncryptHelper>(EncryptHelper());
    Get.put<Client>(Client()
        .setEndpoint('http://192.168.1.33:8081/v1')
        .setProject('613a898f2cc16')
        .setSelfSigned());
    Get.put<DataProvider>(DataProvider());
    Get.put<DataRepository>(DataRepository());
  }
}
