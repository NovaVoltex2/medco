import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            SearchBar(
              hintText: "Search Schedule",
              elevation: WidgetStatePropertyAll(0),
              leading: Icon(Icons.search),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Schedule",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
