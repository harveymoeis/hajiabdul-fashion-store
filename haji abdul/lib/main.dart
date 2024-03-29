import 'package:coffee_shop_youtube/home_page.dart';
import 'package:coffee_shop_youtube/login_google_page.dart';
import 'package:coffee_shop_youtube/regrister.dart';
import 'package:coffee_shop_youtube/hub.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home://RegristerPage(),
        //HubungiPage(),
        LoginPage(),
       //HomePage(),
        theme: ThemeData(
            brightness: Brightness.light, primarySwatch: Colors.brown));
  }
}
