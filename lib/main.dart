import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/HomeView/home_view.dart';
import 'package:whatsapp_clone/views/splash/splash_view.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
