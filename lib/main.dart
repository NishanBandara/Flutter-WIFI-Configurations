import 'package:flutter/material.dart';
import 'package:wifi_con/Wifi_Configuration.dart';

import 'Internet_Connection_Confugure.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WIFI CONNNECTION STATUS')),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Internet_Connection_configure()),
                );
              },
              child: Container(
                height: 100,
                width: 350,
                child: Card(
                  elevation: 2,
                  color: Color.fromARGB(255, 97, 204, 218),
                  borderOnForeground: true,
                  child: Center(
                      child: const Text(
                    'Internet Connetction Check',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Wifi_Config()),
                );
              },
              child: Container(
                height: 100,
                width: 350,
                child: Card(
                  elevation: 2,
                  color: Color.fromARGB(255, 127, 234, 180),
                  borderOnForeground: true,
                  child: Center(
                      child: const Text(
                    'WIFI Configure Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
