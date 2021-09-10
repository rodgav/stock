import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';
import 'package:stock/app/data/models/session.dart';
import 'package:stock/app/data/models/store.dart';
import 'package:stock/app/data/models/user.dart';
import 'package:stock/app/data/services/auth_service.dart';

class DataProvider {
  final _client = Get.find<Client>();

  Future<UserModel?> accountCreate(
      {required String email,
      required String password,
      required String name}) async {
    try {
      Account account = Account(_client);
      final response =
          await account.create(email: email, password: password, name: name);
      return UserModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<SesionModel?> createSession(
      {required String email, required String password}) async {
    try {
      Account account = Account(_client);
      final response =
          await account.createSession(email: email, password: password);
      return SesionModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<StoreModel?> getStores() async {
    try {
      final userId = AuthService.to.userId;
      final database = Database(_client);
      final response = await database.listDocuments(
          collectionId: '613b5f8789e4f', filters: ['userId=$userId']);
      return StoreModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
