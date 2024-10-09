import 'package:flutter/material.dart';
import 'package:medcoapp/components/tabs.dart';

class RelationPage extends StatelessWidget {
  const RelationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SearchBar(
              hintText: "Search Relations",
              elevation: WidgetStatePropertyAll(0),
              leading: Icon(Icons.search),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Relations",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => Tabs(index: index)))
          ],
        ),
      ),
    );
  }
}
