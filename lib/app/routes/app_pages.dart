import 'package:get/get.dart';
import 'package:stock/app/data/middlewares/auth_middleware.dart';
import 'package:stock/app/modules/home/home_binding.dart';
import 'package:stock/app/modules/home/home_view.dart';
import 'package:stock/app/modules/login/login_binding.dart';
import 'package:stock/app/modules/login/login_view.dart';
import 'package:stock/app/modules/products/products_binding.dart';
import 'package:stock/app/modules/products/products_view.dart';
import 'package:stock/app/modules/products_detail/products_detail_binding.dart';
import 'package:stock/app/modules/products_detail/products_detail_view.dart';
import 'package:stock/app/modules/root/root_binding.dart';
import 'package:stock/app/modules/root/root_view.dart';
import 'package:stock/app/modules/sale_detail/sale_detail_binding.dart';
import 'package:stock/app/modules/sale_detail/sale_detail_view.dart';
import 'package:stock/app/modules/sales/sales_binding.dart';
import 'package:stock/app/modules/sales/sales_view.dart';
import 'package:stock/app/modules/sales_detail/sales_detail_binding.dart';
import 'package:stock/app/modules/sales_detail/sales_detail_view.dart';
import 'package:stock/app/modules/splash/splash_binding.dart';
import 'package:stock/app/modules/splash/splash_view.dart';
import 'package:stock/app/modules/stock/stock_binding.dart';
import 'package:stock/app/modules/stock/stock_view.dart';
import 'package:stock/app/modules/stock_detail/stock_detail_binding.dart';
import 'package:stock/app/modules/stock_detail/stock_detail_view.dart';
import 'package:stock/app/modules/stock_product_detail/stock_product_detail_binding.dart';
import 'package:stock/app/modules/stock_product_detail/stock_product_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootPage(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              name: _Paths.SPLASH,
              page: () => SplashPage(),
              binding: SplashBinding()),
          GetPage(
              middlewares: [EnsureNotAuthMiddleware()],
              name: _Paths.LOGIN,
              page: () => LoginPage(),
              binding: LoginBinding()),
          GetPage(
              preventDuplicates: true,
              name: _Paths.HOME,
              page: () => HomePage(),
              binding: HomeBinding(),
              title: null,
              children: [
                GetPage(
                    name: _Paths.SALES,
                    page: () => SalesPage(),
                    binding: SalesBinding(),
                    children: [
                      GetPage(
                          middlewares: [EnsureAuthMiddleware()],
                          name: _Paths.SALEDETAIL,
                          page: () => SaleDetailPage(),
                          binding: SaleDetailBinding()),
                      GetPage(
                          middlewares: [EnsureAuthMiddleware()],
                          name: _Paths.SALESDETAIL,
                          page: () => SalesDetailPage(),
                          binding: SalesDetailBinding()),
                    ]),
                GetPage(
                    name: _Paths.STOCK,
                    page: () => StockPage(),
                    binding: StockBinding(),
                    children: [
                      GetPage(
                          middlewares: [EnsureAuthMiddleware()],
                          name: _Paths.STOCKDETAIL,
                          page: () => StockDetailPage(),
                          binding: StockDetailBinding()),
                      GetPage(
                          middlewares: [EnsureAuthMiddleware()],
                          name: _Paths.STOCKPRODETAIL,
                          page: () => StockProductDetailPage(),
                          binding: StockProductDetailBinding()),
                    ]),
                GetPage(
                    name: _Paths.PRODUCTS,
                    page: () => ProductsPage(),
                    binding: ProductsBinding(),
                    children: [
                      GetPage(
                          middlewares: [EnsureAuthMiddleware()],
                          name: _Paths.PRODUCTSDETAIL,
                          page: () => ProductsDetailPage(),
                          binding: ProductsDetailBinding()),
                    ]),
              ])
        ]),
  ];
}
