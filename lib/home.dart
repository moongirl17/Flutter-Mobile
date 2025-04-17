import 'package:flutter/material.dart';
import 'package:flutter_app/counter_widget.dart';

class Homepage extends StatefulWidget {
  final String title; // Tambahkan properti title

  const Homepage({super.key, required this.title}); // Simpan title di konstruktor
  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              widget.title, // Gunakan widget.title untuk menampilkan judul
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/logo.png',
              width: 25,
              height: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action to perform when the button is pressed
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Action to perform when the button is pressed
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 64,
                    height: 64,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 64,
                    height: 64,
                  ),
                ),
              ],
            ),
            const Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CounterWidget(counter: _counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomSheet: TextButton(
        onPressed: () {
          // Action to perform when the button is pressed
        },
        child: const Text('Button'),
      ),
    );
  }
}