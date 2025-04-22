import 'package:flutter/material.dart';

class GridviewCount extends StatefulWidget {
  const GridviewCount ({super.key});

  @override
  State <GridviewCount> createState() =>  _GridviewCountState();
}

class  _GridviewCountState extends State <GridviewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Count'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
        padding: EdgeInsets.all(8),
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 1"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 2"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 3"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 4"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 5"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Menu 6"),
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