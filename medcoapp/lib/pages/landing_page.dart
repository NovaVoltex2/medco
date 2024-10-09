import 'package:flutter/material.dart';
import 'package:medcoapp/components/sign_in.dart';
import 'package:medcoapp/components/sing_up.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: (screenH * 0.3),
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Center(
                child: Text("logo"),
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(tabs: [
                    Tab(
                      child: Text("Sign In",style: TextStyle(),),
                    ),
                    Tab(
                      child: Text("Sign Up",style: TextStyle(),),
                    )
                  ]),
                  SizedBox(
                    height: (screenH * 0.66),
                    child: const TabBarView(children: [SignIn(), SingUp()]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
