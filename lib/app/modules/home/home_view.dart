import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/modules/home/home_widgets/drawer.dart';

import 'package:stock/app/routes/app_pages.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (_) {
      return GetRouterOutlet.builder(builder: (context, delegate, current) {
        final currentLocation = current?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.PRODUCTS) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.STOCK) == true) {
          currentIndex = 1;
        }
        return Scaffold(
          drawer: const DrawerWid(),
          appBar: AppBar(
            title: Text(currentIndex == 0
                ? 'SALES'
                : currentIndex == 1
                ? 'STOCK'
                : 'PRODUCTS'),
            centerTitle: true,
          ),
          body: GetRouterOutlet(
            initialRoute: Routes.SALES,
            key: Get.nestedKey(Routes.HOME),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.image), label: 'SALES'),
              BottomNavigationBarItem(icon: Icon(Icons.image), label: 'STOCK'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image), label: 'PRODUCTS'),
            ],
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.SALES);
                  break;
                case 1:
                  delegate.toNamed(Routes.STOCK);
                  break;
                case 2:
                  delegate.toNamed(Routes.PRODUCTS);
                  break;
              }
            },
          ),
        );
      });
    });
  }
}
