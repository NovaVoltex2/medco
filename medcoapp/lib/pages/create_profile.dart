import 'package:flutter/material.dart';
import 'package:medcoapp/pages/login_page.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Container with the logo
            Container(
              width: double.infinity,
              height: (screenH * 0.3),
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Center(
                child: Text(
                  "logo",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            // Bottom Container with form fields
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: (screenH * 0.7),
              decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Create Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      print("select image");
                    },
                    child: const Center(
                        child: CircleAvatar(
                      radius: 70,
                      child: Icon(
                        Icons.camera_alt,
                        size: 35,
                      ),
                    )),
                  ),
                  const SizedBox(height: 10),
                  // Email TextField
                  const TextField(
                    decoration: InputDecoration(
                        labelText: "Enter Age",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 10, color: Colors.red))),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: "Country,City",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 10, color: Colors.red))),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: "Gender",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 10, color: Colors.red))),
                  ),
                  const SizedBox(height: 10),
                  // Login Button (you can implement its functionality)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: const BeveledRectangleBorder(),
                        minimumSize: const Size(double.infinity, 50)),
                    child: const Text(
                      'Continue',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
