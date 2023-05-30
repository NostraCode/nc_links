part of '_index.dart';

abstract class Ctrl {
  static CobaCtrl get coba => CobaCtrl();

  static SplashCtrl get splash => SplashCtrl();
  static LoginCtrl get login => LoginCtrl();
  static RegisCtrl get regis => RegisCtrl();
  static ForgetCtrl get forget => ForgetCtrl();
  static OtpCtrl get otp => OtpCtrl();
  static PhoneCtrl get phone => PhoneCtrl();
  static CodeCtrl get code => CodeCtrl();
  static HomeCtrl get home => HomeCtrl();
  static AppCheckCtrl get appCheck => AppCheckCtrl();
  static NotFoundCtrl get notFound => NotFoundCtrl();

  static PopupCtrl get popup => PopupCtrl();
  static ProfileCtrl get profile => ProfileCtrl();
  static NeedLoginCtrl get needLogin => NeedLoginCtrl();
  static OnlyAdminCtrl get onlyAdmin => OnlyAdminCtrl();
  static OverlayWidgetsCtrl get overlayWidget => OverlayWidgetsCtrl();
  static InjStateCtrl get injState => InjStateCtrl();
  static InjPersistCtrl get injPersist => InjPersistCtrl();
  static InjPessimisticCtrl get injPessimistic => InjPessimisticCtrl();
  static InjAnimCtrl get injAnim => InjAnimCtrl();
  static InjTabCtrl get injTab => InjTabCtrl();
  static InjScrollCtrl get injScroll => InjScrollCtrl();
  static InjFormCtrl get injForm => InjFormCtrl();
  static InjThemeCtrl get injTheme => InjThemeCtrl();
  static InjI18nCtrl get injI18n => InjI18nCtrl();
  static FbAuthCtrl get fbAuth => FbAuthCtrl();
  static FbFirestoreCtrl get fbFirestore => FbFirestoreCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static FcmCtrl get fcm => FcmCtrl();
  static AnalyticsCtrl get analytics => AnalyticsCtrl();
  static RestListCtrl get restList => RestListCtrl();
  static RestInputCtrl get restInput => RestInputCtrl();
  static RestDetailCtrl get restDetail => RestDetailCtrl();
  static RestEditCtrl get restEdit => RestEditCtrl();
  static SnakeCtrl get snake => SnakeCtrl();
  static ChatLoginCtrl get chatLogin => ChatLoginCtrl();
  static ChatUserCtrl get chatUser => ChatUserCtrl();
  static ChatFriendCtrl get chatFriend => ChatFriendCtrl();
  static ChatRoomCtrl get chatRoom => ChatRoomCtrl();
  static ChatMessageCtrl get chatMessage => ChatMessageCtrl();
}
