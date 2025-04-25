import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({super.key});

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  
  final footballPlayers = [
    'Cristiano Ronaldo',
    'Lionel Messi',
    'Neymar Jr',
    'Kylian Mbappe',
    'Kevin De Bruyne',
    'Mohamed Salah',
    'Karim Benzema',
    'Robert Lewandowski',
    'Virgil van Dijk',
    'Sadio Mane',
    'Harry Kane',
    'Gareth Bale',
    'Eden Hazard',
    'Luka Modric',
    'Sergio Ramos',
    'Gerard Pique',
    'Zlatan Ibrahimovic',
  ];
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Example'),
      ),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(footballPlayers[index]),
            subtitle: Text('Player ${index + 1}'),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(footballPlayers[index][0]),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        physics: const ClampingScrollPhysics(), // Disable scrolling
      ),

    );
  }
}