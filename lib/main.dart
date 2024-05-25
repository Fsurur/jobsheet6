import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Fauzan Barokatus Surur',
    'Esta Purwanti',
    'Alfiami Sholihatun',
    'Ricky Agung Vernanda',
    'Muhammad Rifki',
  ];
  var listWarna = [
    Color.fromARGB(255, 113, 9, 233),
    const Color.fromARGB(255, 223, 65, 7),
    const Color.fromARGB(255, 19, 214, 25),
    const Color.fromARGB(255, 221, 0, 74),
    const Color.fromARGB(255, 4, 122, 219),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          textAlign: TextAlign.center,
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        )
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Halo Teman',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: teksUtama),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      )));
}
