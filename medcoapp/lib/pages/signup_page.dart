import 'package:flutter/material.dart';
import 'package:medcoapp/pages/create_profile.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
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
            Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: (screenH * 0.7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Column(
                  children: [
                    const Text(
                      "Create An Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Fisrt Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 10, color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Last Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 10, color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 10, color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                    const SizedBox(
                      height: 10,
                    ),
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
                          labelText: "Comfirm Password",
                          border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 10, color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CreateProfile()));
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          shape: const BeveledRectangleBorder(),
                          minimumSize: const Size(double.infinity, 50)),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
