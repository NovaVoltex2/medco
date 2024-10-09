import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final index;
  const Tabs({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name of User Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text("12/15/16  06:30 am"),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
      ),
    );
  }
}
