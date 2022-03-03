import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: const Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),//Title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  )
                ],
              ),
            ),//Logo
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Museum Inside a decommissioned Russion war submarine tours & an adjacent park with cafes. Clean and wel maintened. Car park cost 10k, enterance fee 15k/person. You can see KRI Pasopati there, it is a russian whisket class. You can also watch the video abaout the Indonesian Navy at the building beside the submarine',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),//Description
          ],
        ),
      ),
    );
  }
}
