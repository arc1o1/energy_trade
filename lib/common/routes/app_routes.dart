import 'package:energy_trade/common/routes/routes.dart';
import 'package:energy_trade/features/personnalization/01_settings/settings.dart';
import 'package:energy_trade/features/personnalization/03_wallet/wallet.dart';
import 'package:energy_trade/features/personnalization/04_history/history.dart';
import 'package:energy_trade/features/shop/01_home/home.dart';
import 'package:energy_trade/features/shop/02_analytics/analytics.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    // client pages

    GetPage(name: CcRoutes.home, page: () => const HomeScreen()),
    GetPage(name: CcRoutes.analytics, page: () => const AnalyticsScreen()),
    GetPage(name: CcRoutes.settings, page: () => const SettingsScreen()),
    GetPage(name: CcRoutes.wallet, page: () => const WalletScreen()),
    GetPage(name: CcRoutes.history, page: () => const HistoryScreen()),
    // GetPage(name: CcRoutes.order, page: () => const OrderScreen()),
    // GetPage(name: CcRoutes.orderDetail, page: () => const OrderDetailsScreen()),
    // GetPage(name: CcRoutes.checkout, page: () => const CheckoutScreen()),
    // GetPage(name: CcRoutes.cart, page: () => const CartScreen()),
    // GetPage(name: CcRoutes.userProfile, page: () => const ProfileScreen()),
    // GetPage(name: CcRoutes.signup, page: () => const SignupScreen()),
    // GetPage(name: CcRoutes.verifyEmail, page: () => const VerifyEmail()),
    // GetPage(name: CcRoutes.signIn, page: () => const LoginScreen()),
    // GetPage(name: CcRoutes.forgotPassword, page: () => const ForgotPassword()),
    // GetPage(name: CcRoutes.onboarding, page: () => const OnboardingView()),
  ];
}
