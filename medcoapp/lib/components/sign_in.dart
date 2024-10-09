import 'package:flutter/material.dart';
import 'package:medcoapp/pages/login_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text("Log into Account",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    "log in as Medical Personel",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    "log in as Patient",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
