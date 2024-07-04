import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/HomeView/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeView(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://static.vecteezy.com/system/resources/thumbnails/018/930/748/small_2x/whatsapp-logo-whatsapp-icon-whatsapp-transparent-free-png.png'
        ),
      ),
    );
  }
}
