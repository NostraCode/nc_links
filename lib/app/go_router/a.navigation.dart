part of '_index.dart';

// final nav = GoRouter(
//   urlPathStrategy: UrlPathStrategy.path,
//   routerNeglect: true,
//   initialLocation: Routes.home,
//   observers: [
//     FirebaseAnalyticsObserver(analytics: x1FbAnalytics.st.instance)
//     // ObsAnalytics(analytics: x1FbAnalytics.st.instance),
//     // ObsNavigation(),
//   ],
//   routes: [
//     //* master -- ----- ----- ----- ----- -----
//     GoRoute(
//       path: Routes.splash,
//       builder: (context, state) => const SplashView(),
//     ),
//     GoRoute(
//       path: Routes.home,
//       builder: (context, state) => const HomeView(),
//     ),
//     GoRoute(
//       path: Routes.login,
//       builder: (context, state) => const LoginView(),
//     ),
//     GoRoute(
//       path: Routes.regis,
//       builder: (context, state) => const RegisView(),
//     ),
//     //* misc ---- ----- ----- ----- ----- -----
//     GoRoute(
//       path: Routes.popup,
//       builder: (context, state) => const PopupView(),
//     ),
//     GoRoute(
//       path: Routes.flash,
//       builder: (context, state) => const FlashView(),
//     ),
//     GoRoute(
//       path: Routes.needLogin,
//       builder: (context, state) => const NeedLoginView(),
//     ),
//     GoRoute(
//       path: Routes.adminOnly,
//       builder: (context, state) => const OnlyAdminView(),
//     ),
//     //* injection ----- ----- ----- ----- -----
//     GoRoute(
//       path: Routes.injState,
//       builder: (context, state) => const InjStateView(),
//     ),
//     GoRoute(
//       path: Routes.injTab,
//       builder: (context, state) => const InjTabView(),
//     ),
//     GoRoute(
//       path: Routes.injAnim,
//       builder: (context, state) => const InjAnimView(),
//     ),
//     GoRoute(
//       path: Routes.injTheme,
//       builder: (context, state) => const InjThemeView(),
//     ),
//     GoRoute(
//       path: Routes.injScroll,
//       builder: (context, state) => const InjScrollView(),
//     ),
//     GoRoute(
//       path: Routes.injForm,
//       builder: (context, state) => const InjFormView(),
//     ),
//     GoRoute(
//       path: Routes.injI18n,
//       builder: (context, state) => const InjI18nView(),
//     ),
//     //* firebase ------ ----- ----- ----- -----
//     GoRoute(
//       path: Routes.fbAuth,
//       builder: (context, state) => const FbAuthView(),
//     ),
//     GoRoute(
//       path: Routes.fbFirestore,
//       builder: (context, state) => const FbFirestoreView(),
//     ),
//     GoRoute(
//       path: Routes.productList,
//       builder: (context, state) => const ProductListView(),
//     ),
//     GoRoute(
//       path: Routes.productInput,
//       builder: (context, state) => const ProductInputView(),
//     ),
//     GoRoute(
//       path: Routes.productDetail,
//       builder: (context, state) => const ProductDetailView(),
//     ),
//     GoRoute(
//       path: Routes.productEdit,
//       builder: (context, state) => const ProductEditView(),
//     ),
//     GoRoute(
//       path: Routes.fcm,
//       builder: (context, state) => const FcmView(),
//     ),
//     GoRoute(
//       path: Routes.analytics,
//       builder: (context, state) => const AnalyticsView(),
//     ),
//     //* restapi ------- ----- ----- ----- -----
//     GoRoute(
//       path: Routes.restList,
//       builder: (context, state) => const RestListView(),
//     ),
//     GoRoute(
//       path: Routes.restInput,
//       builder: (context, state) => const RestInputView(),
//     ),
//     GoRoute(
//       path: Routes.restDetail,
//       builder: (context, state) => const RestDetailView(),
//     ),
//     GoRoute(
//       path: Routes.restEdit,
//       builder: (context, state) => const RestEditView(),
//     ),
//     //* training ------- ----- ----- ----- -----
//     GoRoute(
//       path: Routes.snake,
//       builder: (context, state) => const SnakeView(),
//     ),
//   ],
// );
