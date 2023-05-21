part of '_index.dart';

abstract class Data {
  static Injected<SplashData> get splash => _splashData;
  static Injected<LoginData> get login => _loginData;
  static Injected<RegisData> get regis => _regisData;
  static Injected<HomeData> get home => _homeData;
  static Injected<NotFoundData> get notFound => _notFoundData;

  static Injected<ForgetData> get forget => _forgetData;

  static Injected<PopupData> get popup => _popupData;
  static Injected<ProfileData> get profile => _profileData;
  static Injected<NeedLoginData> get needLogin => _needLoginData;
  static Injected<OnlyAdminData> get onlyAdmin => _onlyAdminData;
  static Injected<OverlayWidgetsData> get overlayWidget => _overlayWidgetData;
  static Injected<InjStateData> get injState => _injStateData;
  static Injected<InjPersistData> get injPersist => _injPersistData;
  static Injected<InjPessimisticData> get injPessimistic => _injPessimisticData;
  static Injected<InjAnimData> get injAnim => _injAnimData;
  static Injected<InjTabData> get injTab => _injTabData;
  static Injected<InjScrollData> get injScroll => _injScrollData;
  static Injected<InjFormData> get injForm => _injFormData;
  static Injected<InjThemeData> get injTheme => _injThemeData;
  static Injected<InjI18nData> get injI18n => _injI18nData;
  static Injected<FbAuthData> get fbAuth => _fbAuthData;
  static Injected<FbFirestoreData> get fbFirestore => _fbFirestoreData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductInputData> get productInput => _productInputData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductEditData> get productEdit => _productEditData;
  static Injected<FcmData> get fcm => _fcmData;
  static Injected<AnalyticsData> get analytics => _analyticsData;
  static Injected<RestListData> get restList => _restListData;
  static Injected<RestInputData> get restInput => _restInputData;
  static Injected<RestDetailData> get restDetail => _restDetailData;
  static Injected<RestEditData> get restEdit => _restEditData;
  static Injected<SnakeData> get snake => _snakeData;
  static Injected<ChatLoginData> get chatLogin => _chatLoginData;
  static Injected<ChatUserData> get chatUser => _chatUserData;
  static Injected<ChatFriendData> get chatFriend => _chatFriendData;
  static Injected<ChatRoomData> get chatRoom => _chatRoomData;
  static Injected<ChatMessageData> get chatMessage => _chatMessageData;
}

// final _restEditData = RM.inject<RestEditData>(
//   () => RestEditData(),
//   debugPrintWhenNotifiedPreMessage: '',
//   sideEffects: SideEffects(
//     initState: () => Ctrl.restEdit.init(),
//   ),
// );
final _splashData = RM1.inj(SplashData(), Ctrl.splash.init);
final _loginData = RM1.inj(LoginData(), Ctrl.login.init);
final _regisData = RM1.inj(RegisData(), Ctrl.regis.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _notFoundData = RM1.inj(NotFoundData(), Ctrl.notFound.init);
final _forgetData = RM1.inj(ForgetData(), Ctrl.forget.init);

final _popupData = RM1.inj(PopupData(), Ctrl.popup.init);
final _profileData = RM1.inj(ProfileData(), Ctrl.profile.init);
final _needLoginData = RM1.inj(NeedLoginData(), Ctrl.needLogin.init);
final _onlyAdminData = RM1.inj(OnlyAdminData(), Ctrl.onlyAdmin.init);
final _overlayWidgetData = RM1.inj(OverlayWidgetsData(), Ctrl.overlayWidget.init);
final _injStateData = RM1.inj(InjStateData(), Ctrl.injState.init);
final _injPersistData = RM1.inj(InjPersistData(), Ctrl.injPersist.init);
final _injPessimisticData = RM1.inj(InjPessimisticData(), Ctrl.injPessimistic.init);
final _injAnimData = RM1.inj(InjAnimData(), Ctrl.injAnim.init);
final _injTabData = RM1.inj(InjTabData(), Ctrl.injTab.init);
final _injScrollData = RM1.inj(InjScrollData(), Ctrl.injScroll.init);
final _injFormData = RM1.inj(InjFormData(), Ctrl.injForm.init);
final _injThemeData = RM1.inj(InjThemeData(), Ctrl.injTheme.init);
final _injI18nData = RM1.inj(InjI18nData(), Ctrl.injI18n.init);
final _fbAuthData = RM1.inj(FbAuthData(), Ctrl.fbAuth.init);
final _fbFirestoreData = RM1.inj(FbFirestoreData(), Ctrl.fbFirestore.init);
final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _productInputData = RM1.inj(ProductInputData(), Ctrl.productInput.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);
final _fcmData = RM1.inj(FcmData(), Ctrl.fcm.init);
final _analyticsData = RM1.inj(AnalyticsData(), Ctrl.analytics.init);
final _restListData = RM1.inj(RestListData(), Ctrl.restList.init);
final _restInputData = RM1.inj(RestInputData(), Ctrl.restInput.init);
final _restDetailData = RM1.inj(RestDetailData(), Ctrl.restDetail.init);
final _restEditData = RM1.inj(RestEditData(), Ctrl.restEdit.init);
final _snakeData = RM1.inj(SnakeData(), Ctrl.snake.init);
final _chatLoginData = RM1.inj(ChatLoginData(), Ctrl.chatLogin.init);
final _chatUserData = RM1.inj(ChatUserData(), Ctrl.chatUser.init);
final _chatFriendData = RM1.inj(ChatFriendData(), Ctrl.chatFriend.init);
final _chatRoomData = RM1.inj(ChatRoomData(), Ctrl.chatRoom.init);
final _chatMessageData = RM1.inj(ChatMessageData(), Ctrl.chatMessage.init);
