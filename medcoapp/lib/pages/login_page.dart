import 'package:flutter/material.dart';
import 'package:medcoapp/pages/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Moved isvisible variable here to make it persistent across builds
  bool isvisible = true;
  bool? checked = false;

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
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Welcome Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email TextField
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 10, color: Colors.red))),
                  ),
                  const SizedBox(height: 20),
                  // Password TextField with visibility toggle
                  TextField(
                    obscureText: isvisible,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          icon: Icon(isvisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        labelText: "Password",
                        border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 10, color: Colors.red))),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.blue,
                              value: checked,
                              onChanged: (value) {
                                setState(() {
                                  checked = value;
                                });
                              }),
                          const Text("Remember password")
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Login Button (you can implement its functionality)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: const BeveledRectangleBorder(),
                        minimumSize: const Size(double.infinity, 50)),
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
