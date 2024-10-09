import 'package:flutter/material.dart';
import 'package:medcoapp/components/drawer.dart';
import 'package:medcoapp/components/favorites_page.dart';
import 'package:medcoapp/components/relation_page.dart';
import 'package:medcoapp/components/schedule_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                  key: const Key("Relation"),
                  label: "Relation",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      icon: const Icon(Icons.people))),
              BottomNavigationBarItem(
                  key: const Key("Schedule"),
                  label: "Schedule",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      icon: const Icon(Icons.calendar_month_sharp))),
              BottomNavigationBarItem(
                  key: const Key("Favorite"),
                  label: "Favorite",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      icon: const Icon(Icons.star_outlined))),
            ]),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_sharp))
          ],
        ),
        drawer: const DrawerBoard(),
        body: IndexedStack(
          index: currentIndex,
          children: [
            RelationPage(),
            SchedulePage(),
            FavoritesPage(),
          ],
        ));
  }
}
