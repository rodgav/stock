import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/data/services/auth_service.dart';
import 'package:stock/app/modules/home/home_logic.dart';
import 'package:stock/app/routes/app_pages.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(
        id: 'stores',
        builder: (_) {
          final stores = _.storeModel?.documents;
          return Drawer(
            child: Column(
              children: [
                DrawerHeader(child: Container(color: Colors.pink)),
                Expanded(
                    child: stores != null
                        ? stores.isNotEmpty
                            ? ListView.builder(
                                itemBuilder: (__, index) => ListTile(
                                  title: Text(stores[index].name),
                                ),
                                itemCount: stores.length,
                              )
                            : const Text('no data')
                        : const CircularProgressIndicator()),
                ListTile(
                  title: const Text('Cerrar sesión'),
                  onTap: () {
                    AuthService.to.logout();
                    Get.rootDelegate.offNamed(Routes.LOGIN);
                    Navigator.of(context).pop();
                  },
                ),
                const ListTile(
                  title: Text(
                    'rsgmsolutions.com',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                )
              ],
            ),
          );
        });
  }
}
