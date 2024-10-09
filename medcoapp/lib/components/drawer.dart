import 'package:flutter/material.dart';

class DrawerBoard extends StatelessWidget {
  const DrawerBoard({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem = [
      {"icon": Icons.dashboard, "name": "Dashboard"},
      {"icon": Icons.person, "name": "Profile"},
      {"icon": Icons.settings, "name": "Setting"},
      {"icon": Icons.question_mark_sharp, "name": "About"},
      {"icon": Icons.feedback, "name": "Feedback"},
      {"icon": Icons.share, "name": "Share"},
      {"icon": Icons.info, "name": "Info"},
      {"icon": Icons.security, "name": "security & Privacy"},
      {"icon": Icons.power_settings_new_sharp, "name": "Log out"},
      //"Profile",
      //"Setting",
      //"About",
      //"Feedback",
      //"Share",
      //"security & Privacy",
      //"Log out"
    ];
    String phoneNum = "(+237) 612-345-678";
    double screenH = MediaQuery.of(context).size.height;
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xFF1663A2)),
            child: Padding(
              padding: EdgeInsets.only(top: (screenH * 0.05), bottom: 10),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 75,
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 150,
                        color: Color(0xFF1663A2),
                      ),
                    ),
                  ),
                  const Text(
                    "User Name",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    "example@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Tel:${phoneNum}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: menuItem.length,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          print(menuItem[index]);
                        },
                        child: ListTile(
                          selectedColor: Colors.blue,
                          leading: Icon(menuItem[index]["icon"]),
                          title: Text(
                            menuItem[index]["name"],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )))
        ],
      ),
    );
  }
}
