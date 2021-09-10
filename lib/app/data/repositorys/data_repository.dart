import 'package:get/get.dart';
import 'package:stock/app/data/models/session.dart';
import 'package:stock/app/data/models/store.dart';
import 'package:stock/app/data/models/user.dart';
import 'package:stock/app/data/providers/data_provider.dart';

class DataRepository {
  final _dataProvider = Get.find<DataProvider>();

  Future<UserModel?> accountCreate(
          {required String email,
          required String password,
          required String name}) =>
      _dataProvider.accountCreate(email: email, password: password, name: name);

  Future<SesionModel?> createSession(
          {required String email, required String password}) =>
      _dataProvider.createSession(email: email, password: password);

  Future<StoreModel?> getStores()=> _dataProvider.getStores();
}
