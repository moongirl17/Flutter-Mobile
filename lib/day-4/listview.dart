import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Container(
                color: Colors.black,
                height: 100,
              ),
              Container(
                color: Colors.brown,
                height: 100,
              ),
              Container(
                color: Colors.orange,
                height: 100,
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.brown,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
        ],
        // Removed the incomplete SizedBox
      )
    );
  }
}