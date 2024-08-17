import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/following_reel_page.dart';
import 'package:tap_tock_shop/pages/for_you_reel_page.dart';
import 'package:tap_tock_shop/pages/Welcome_page/welcome_page.dart';
import 'package:tap_tock_shop/pages/messages/all_messages_page/all_messages_page.dart';
import 'package:tap_tock_shop/pages/messages/messages_deatil_page/message_detail_page.dart';
import 'package:tap_tock_shop/pages/profile%20page/profile_page.dart';
import 'package:tap_tock_shop/pages/sign_up_page.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  return switch (settings.name) {
    //  Sign up page
    SignUpPage.pageName => CupertinoPageRoute(
        builder: (context) => const SignUpPage(),
      ),

    // Login page
    WelcomePage.pageName => CupertinoPageRoute(
        builder: (context) => const WelcomePage(),
      ),

    // for you Reel page
    ForYouReelPage.pageName => CupertinoPageRoute(
        builder: (context) => const ForYouReelPage(),
      ),

    // Following Reel page
    FollowingReelPage.pageName => CupertinoPageRoute(
        builder: (context) => const FollowingReelPage(),
      ),

    // All messages page
    AllMessagesPage.pageName => CupertinoPageRoute(
        builder: (context) => const AllMessagesPage(),
      ),

    // Message Detail page
    MessageDetailPage.pageName => CupertinoPageRoute(
        builder: (context) => const MessageDetailPage(),
      ),

    // Profile page
    ProfilePage.pageName => CupertinoPageRoute(
        builder: (context) => const ProfilePage(),
      ),

    // Error page
    _ => MaterialPageRoute(
        builder: (context) => Container(
          color: Colors.red,
          child: const Text('Error'),
        ),
      )
  };
}
