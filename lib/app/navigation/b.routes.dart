part of '_index.dart';

class Routes {
  Routes._();

  static const root = '/'; //* init page
  //* x_ui_screens -- ----- ----- ----- -----
  static const cobaSatu = '/coba_satu';
  static const cobaDua = '/coba_dua';
  static const cobaTiga = '/coba_tiga';
  //* master -- ----- ----- ----- ----- -----
  static const splash = '/splash';
  static const home = '/';
  static const login = '/login';
  static const regis = '/registration';
  static const popup = '/popup';
  static const needLogin = '/need_login';
  static const adminOnly = '/admin_only';
  //* injection ----- ----- ----- ----- -----
  static const injState = '/inj_state';
  static const injTab = '/inj_tab';
  static const injAnim = '/inj_animation';
  static const injTheme = '/inj_theme';
  static const injScroll = '/inj_scroll';
  static const injForm = '/inj_form';
  static const injI18n = '/inj_i18n';
  //* firebase ------ ----- ----- ----- -----
  static const fbAuth = '/fb_auth';
  static const fbFirestore = '/fb_firestore';
  static const productList = '/product_list';
  static const productInput = '/product_input';
  static const productDetail = '/product_detail';
  static const productEdit = '/product_edit';
  //* restapi ------- ----- ----- ----- -----
  static const restList = '/rest_list';
  static const restInput = '/rest_input';
  static const restDetail = '/rest_detail';
  static const restEdit = '/rest_edit';
  //* training ------ ----- ----- ----- -----
  static const snake = '/snake';
}
