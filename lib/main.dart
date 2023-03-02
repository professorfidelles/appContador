import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  int contador = 0;

  void click() {
    setState(() {
      contador++;
    });
  }

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contador",
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            " O contador vale $contador",
            style: const TextStyle(
                fontSize: 50, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          onLongPress: () {
            setState(() {
              contador++;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: click,
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add),
      ),
    );
  }
}
