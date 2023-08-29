import 'package:flutter/material.dart';
import 'package:food_order_pos/navbar/tab_page.dart';
import 'package:food_order_pos/view/home.dart';
import 'package:food_order_pos/view/menu.dart';
import 'package:food_order_pos/view/order.dart';
import 'package:food_order_pos/view/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/menu': (context) => MenuPage(),
      //   '/order': (context) => OrderPage(),
      //   '/setting': (context) => SettingsPage(),
      // },
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.pink.shade100,
          indicatorColor: Colors.pink.shade300,
        ),
      ),
      home: const TabPage(),
    );
  }
}
