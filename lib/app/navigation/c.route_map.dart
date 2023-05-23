part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    Routes.coba: (RouteData data) => const CobaView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.splash: (RouteData data) => const SplashView(),
    Routes.authSwitch: (RouteData data) => const SplashView(),
    Routes.login: (RouteData data) => const LoginView(),
    Routes.regis: (RouteData data) => const RegisView(),
    Routes.forget: (RouteData data) => const ForgetView(),
    Routes.otp: (RouteData data) => const OtpView(),
    Routes.home: (RouteData data) => const HomeView(),
    Routes.notFound: (RouteData data) => NotFoundView(routeData: data),
    //* misc ---- ----- ----- ----- ----- -----
    Routes.popup: (RouteData data) => const PopupView(),
    Routes.overlayWidgets: (RouteData data) => const OverlayWidgetsView(),
    Routes.needLogin: (RouteData data) => const NeedLoginView(),
    Routes.adminOnly: (RouteData data) => const OnlyAdminView(),
    //* injection ----- ----- ----- ----- -----
    Routes.injState: (RouteData data) => const InjStateView(),
    Routes.injPersist: (RouteData data) => const InjPersistView(),
    Routes.injPessimistic: (RouteData data) => const InjPessimisticView(),
    Routes.injTab: (RouteData data) => const InjTabView(),
    Routes.injAnim: (RouteData data) => const InjAnimView(),
    Routes.injTheme: (RouteData data) => const InjThemeView(),
    Routes.injScroll: (RouteData data) => const InjScrollView(),
    Routes.injForm: (RouteData data) => const InjFormView(),
    Routes.injI18n: (RouteData data) => const InjI18nView(),
    //* firebase ------ ----- ----- ----- -----
    Routes.fbAuth: (RouteData data) => const FbAuthView(),
    Routes.fbFirestore: (RouteData data) => const FbFirestoreView(),
    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productInput: (RouteData data) => const ProductInputView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),
    Routes.fcm: (RouteData data) => const FcmView(),
    Routes.analytics: (RouteData data) => const AnalyticsView(),
    //* restapi ------- ----- ----- ----- -----
    Routes.restList: (RouteData data) => const RestListView(),
    Routes.restInput: (RouteData data) => const RestInputView(),
    Routes.restDetail: (RouteData data) => const RestDetailView(),
    Routes.restEdit: (RouteData data) => const RestEditView(),
    //* training ------- ----- ----- ----- -----
    Routes.snake: (RouteData data) => const SnakeView(),
    //* chat --- ------- ----- ----- ----- -----
    Routes.chatLogin: (RouteData data) => const ChatLoginView(),
    Routes.chatUser: (RouteData data) => const ChatUserView(),
    Routes.chatFriend: (RouteData data) => const ChatFriendView(),
    Routes.chatRoom: (RouteData data) => const ChatRoomView(),
    Routes.chatMessage: (RouteData data) => const ChatMessageView(),
  };
}
