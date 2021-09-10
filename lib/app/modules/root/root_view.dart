import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/modules/home/home_widgets/drawer.dart';
import 'package:stock/app/routes/app_pages.dart';

import 'root_logic.dart';

class RootPage extends GetView<RootLogic> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
        body: GetRouterOutlet(initialRoute: Routes.SPLASH),
      );
    });
  }
}
