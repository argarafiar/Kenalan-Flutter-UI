import 'package:flutter/material.dart';
import '../widgets/form_password_section.dart';
import 'package:get/get.dart';
import '../widgets/form_section.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        shadowColor: Color.fromARGB(0, 255, 255, 255),
        centerTitle: true,
        backgroundColor: Color(0xff5666CC),
        title: Text(
          'Kenalan',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        //beri text di bawah dan beri margin bawah
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
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
      body: Stack(
        children: [
          Container(
            color: Color(0xff5666CC),
            height: 200,
          ),
          Container(
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              child: ListView(
                children: [
                  Text(
                    "Create an account",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 50),
                  FormSection(text: "Full name", icon: Icons.abc),
                  SizedBox(height: 30),
                  FormSection(text: "Username", icon: Icons.person),
                  SizedBox(height: 30),
                  FormSection(text: "E-mail", icon: Icons.email),
                  SizedBox(height: 30),
                  FormPasswordSection(text: "Password", icon: Icons.key),
                  SizedBox(height: 30),
                  FormPasswordSection(
                      text: "Confirm Password", icon: Icons.key),
                  SizedBox(height: 30),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
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
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/login');
                    },
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Log in",
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
          )
        ],
      ),
    );
  }
}
