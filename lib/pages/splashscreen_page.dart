import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpalshScreenPage extends StatefulWidget {
  const SpalshScreenPage({super.key});

  @override
  State<SpalshScreenPage> createState() => _SpalshScreenPageState();
}

class _SpalshScreenPageState extends State<SpalshScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //buatkan delay 3 detik
    Future.delayed(Duration(seconds: 2), () {
      //pindahkan ke halaman login
      Get.offNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    //buatkan halaman spalsh screen sederhana
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage('assets/splash.png'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
