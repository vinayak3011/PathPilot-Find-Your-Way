import 'package:flutter/widgets.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor3.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor4.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor5.dart';
import 'package:pathpilot/screens/sign_in/login.dart';
import 'package:pathpilot/screens/sign_up/signup.dart';
import 'package:pathpilot/screens/splash/Splash.dart';
import 'package:pathpilot/screens/updates/updates_screen.dart';
import 'package:pathpilot/temp/navbar.dart';
import 'package:pathpilot/screens/navbar.dart';

import 'screens/chat screen/Chat_Screen.dart';
import 'screens/chat screen/chatHome_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/components/notification_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen3.routeName: (context) => const InitScreen3(),
  InitScreen2.routeName: (context) => const InitScreen2(),
  InitScreen.routeName: (context) => const InitScreen(),
  ChatHomeScreen.routeName: (context) => const ChatHomeScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  // InitScreenMap.routeName: (context) => const InitScreenMap(),
  Splash.routeName: (context) => const Splash(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  SignupScreen2.routeName: (context) => const SignupScreen2(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  UpcomingScreen.routeName: (context) => const UpcomingScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  MapScreenFloor4.routeName: (context) => const MapScreenFloor4(),
  MapScreenFloor3.routeName: (context) => const MapScreenFloor3(),
  MapScreenFloor5.routeName: (context) => const MapScreenFloor5(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
