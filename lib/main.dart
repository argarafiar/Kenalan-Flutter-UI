import 'package:flutter/material.dart';
import 'package:get/get.dart';

//pages
import './pages/login_page.dart';
import './pages/register_page.dart';
import './pages/home_page.dart';
import './pages/notification_page.dart';
import './pages/detail_snap_page.dart';
import './pages/search_page.dart';
import './pages/post_page.dart';
import './pages/chat_page.dart';
import './pages/calls_page.dart';
import './pages/profile_page.dart';
import './pages/splashscreen_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/spalsh',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(name: '/spalsh', page: () => SpalshScreenPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/notification', page: () => NotificationPage()),
        GetPage(name: '/detail_snap', page: () => DetailSnapPage()),
        GetPage(name: '/search', page: () => SearchPage()),
        GetPage(name: '/post', page: () => PostPage()),
        GetPage(name: '/chat', page: () => ChatPage()),
        GetPage(name: '/calls', page: () => CallsPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
      ],
    );
  }
}
