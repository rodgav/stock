import 'package:get/get.dart';
import 'package:stock/app/data/models/store.dart';
import 'package:stock/app/data/repositorys/data_repository.dart';

class HomeLogic extends GetxController {
  final _dataRepository = Get.find<DataRepository>();
  StoreModel? _storeModel;

  StoreModel? get storeModel => _storeModel;

  @override
  void onReady() {
    _getStores();
    super.onReady();
  }

  void _getStores() async {
   _storeModel = await _dataRepository.getStores();
   update(['stores']);
  }
}
