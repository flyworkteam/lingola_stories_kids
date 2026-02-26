import 'package:flutter/material.dart';
import 'package:lingolakidstories/Views/AllStoriesView/all_stories_view.dart';
import 'package:lingolakidstories/Views/AppLanguageView/app_language_view.dart';
import 'package:lingolakidstories/Views/Auth/LoginView/login_view.dart';
import 'package:lingolakidstories/Views/EditProfileView/edit_profile_view.dart';
import 'package:lingolakidstories/Views/FaqView/faq_view.dart';
import 'package:lingolakidstories/Views/HomeView/home_view.dart';
import 'package:lingolakidstories/Views/LibraryView/library_view.dart';
import 'package:lingolakidstories/Views/MainView/main_view.dart';
import 'package:lingolakidstories/Views/NotificationsView/notifications_view.dart';
import 'package:lingolakidstories/Views/OnboardingView/onboarding_view.dart';
import 'package:lingolakidstories/Views/ProfileView/profile_view.dart';
import 'package:lingolakidstories/Views/SplashView/splash_view.dart';
import 'package:lingolakidstories/Views/StoriesView/stories_view.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String onboarding = '/onboarding';
  static const String main = '/main';
  static const String home = '/home';
  static const String library = '/library';
  static const String stories = '/stories';
  static const String allStories = '/all-stories';
  static const String profile = '/profile';
  static const String faq = '/faq';
  static const String editProfile = '/edit-profile';
  static const String appLanguage = '/app-language';
  static const String storyDetails = '/story-details/:storyId';
  static const String notifications = '/notifications';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => const SplashView(),
      login: (context) => const LoginView(),
      onboarding: (context) => const OnboardingView(),
      main: (context) => const MainView(),
      home: (context) => const HomeView(),
      library: (context) => const LibraryView(),
      stories: (context) => const StoriesView(),
      allStories: (context) => const AllStoriesView(),
      profile: (context) => const ProfileView(),
      faq: (context) => const FaqView(),
      editProfile: (context) => const EditProfileView(),
      appLanguage: (context) => const AppLanguageView(),
      notifications: (context) => const NotificationsView(),
    };
  }
}
