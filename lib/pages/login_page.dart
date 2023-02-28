import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/form_section.dart';
import '../widgets/form_password_section.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5666CC),
      appBar: AppBar(
        elevation: 0,
        shadowColor: Color.fromARGB(0, 255, 255, 255),
        centerTitle: true,
        backgroundColor: Color(0xff5666CC),
        //beri jarak bagian atas
        toolbarHeight: 100,

        title: Text(
          'Kenalan',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        //beri text di bawah dan beri margin bawah
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Column(
            children: [
              Text(
                'Your Favorite Social Network',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: ListView(
            children: [
              Text(
                "Log in",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 50),
              FormSection(
                text: "Username",
                icon: Icons.person,
              ),
              SizedBox(height: 30),
              FormPasswordSection(text: "Password", icon: Icons.key),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (controller.auth()) {
                      Get.snackbar(
                        "Success",
                        "Login Success",
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                      );
                      controller.reset();
                      Get.offAllNamed('/home');
                    } else {
                      Get.snackbar(
                        "Failed",
                        "Username or Password is wrong",
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    }
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5666CC),
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              //buat text di bawah
              SizedBox(height: 150),
              InkWell(
                onTap: () {
                  Get.toNamed('/register');
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            color: Color(0xff5666CC),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
