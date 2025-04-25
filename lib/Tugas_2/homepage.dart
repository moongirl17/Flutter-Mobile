import 'package:flutter/material.dart';
import '../day-5/main_page.dart';
import '../day-5/notification.dart';
import '../day-5/profile.dart';
// import 'settings.dart';
import '../day-6/theme_page.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
 
  var name = 'Lionel Messi';
  var index = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.settings),
        //     onPressed: () async {
        //       final result = await Navigator.push(context, MaterialPageRoute(
        //         builder: (context) => SettingPage(
        //           name: name,
        //         ),
        //       ));
        //       if(result != null) {
        //         setState(() {
        //           name = result;
        //         });
        //       }
        //     },
        //   ),
        // ],
      ),
      body: [
        MainPage(name: name),
        ProfilePage(
          name: name,
          onSave: (val) {
            setState(() {
              name = val;
            });
          },
        ),
        NotificationPage(),
        ThemePage(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ]
      ),
    );
  }
}