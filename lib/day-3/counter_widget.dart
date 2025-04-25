import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int counter;

  const CounterWidget({
    super.key,
    required this.counter,
  });

  

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text(
            
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),  
    );
    
  }
}
