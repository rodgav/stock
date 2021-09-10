part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;

  static String LOGIN_THEN(String afterSuccessFullLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessFullLogin)}';
  static const HOME = _Paths.HOME;
  static const SALES = _Paths.HOME + _Paths.SALES;

  static String SALEDETAIL(String saleId) => '$SALES/$saleId';

  static String SALESDETAIL(String storeId) => '$SALES/$storeId';
  static const STOCK = _Paths.HOME + _Paths.STOCK;

  static String STOCKDETAIL(String stockId) => '$STOCK/$stockId';

  static String STOCKPRODETAIL(String storeId) => '$STOCK/$storeId';
  static const PRODUCTS = _Paths.HOME + _Paths.PRODUCTS;

  static String PRODUCTSDETAIL(String productId) => '$PRODUCTS/$productId';
}

abstract class _Paths {
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const HOME = '/home';
  static const SALES = '/sales';
  static const SALEDETAIL = '/:saleId';
  static const SALESDETAIL = '/storeId';
  static const STOCK = '/stock';
  static const STOCKDETAIL = '/stockId';
  static const STOCKPRODETAIL = '/storeId';
  static const PRODUCTS = '/products';
  static const PRODUCTSDETAIL = '/productId';
}
