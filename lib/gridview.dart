import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State <Gridview> createState() =>  GridviewState();
}

class  GridviewState extends State <Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 4 / 7,
        ),
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Menu 1"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Menu 2"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Menu 3"),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed:  () {}, 
              child: Text("data"),
            ),
          )
        ],
      ),
    );
  }
}