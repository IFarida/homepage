// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: FlatButton(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.home),
                  Expanded(child: Text('Дома')),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: FlatButton(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.orange,
              onPressed: () {},
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.event),
                  Expanded(child: Text('Мероприятия')),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: FlatButton(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue[900],
              onPressed: () {},
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.group_add),
                  Expanded(child: Text('Организации')),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: FlatButton(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.red,
              onPressed: () {},
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.space_bar),
                  Expanded(child: Text('Пространства')),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: FlatButton(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.yellow,
              onPressed: () {},
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.card_travel),
                  Expanded(child: Text('Карта локации')),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: const Text('Дом')),
      body: Center(
          child: RaisedButton(
        color: Colors.purpleAccent,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Row(
          children: const [
            SizedBox(
              width: 50,
              height: 40,
            ),
            Text('Возврат'),
          ],
        ),
      )),
    );
  }
}
