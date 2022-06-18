import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Wifi_Connection_configure extends StatefulWidget {
  const Wifi_Connection_configure({Key? key}) : super(key: key);

  @override
  State<Wifi_Connection_configure> createState() =>
      _Wifi_Connection_configureState();
}

class _Wifi_Connection_configureState extends State<Wifi_Connection_configure> {
  bool? checkConnection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wifi Connection Configure',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Check Internet'),
            onPressed: () async {
              checkConnection = await InternetConnectionChecker().hasConnection;

              setState(() {});
              // ignore: avoid_print
              print(checkConnection);
            },
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
          const Divider(),
          Center(
            child: checkConnection!
                ? const Text(
                    'Wifi Intenet has Connected',
                    style: TextStyle(color: Colors.black26),
                  )
                : const Text(
                    'Wifi Intenet has Disconnected!',
                    style: TextStyle(color: Color.fromARGB(255, 231, 33, 33)),
                  ),
          ),
        ],
      ),
    );
  }
}
