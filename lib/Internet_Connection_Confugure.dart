import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Internet_Connection_configure extends StatefulWidget {
  const Internet_Connection_configure({Key? key}) : super(key: key);

  @override
  State<Internet_Connection_configure> createState() =>
      _Internet_Connection_configureState();
}

class _Internet_Connection_configureState
    extends State<Internet_Connection_configure> {
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
              checkConnection!
                  ? await Fluttertoast.showToast(
                      msg: "Connected",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Color.fromARGB(255, 174, 239, 177),
                      textColor: Colors.black54,
                      fontSize: 16.0)
                  : await Fluttertoast.showToast(
                      msg: "Disconnected",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Color.fromARGB(255, 239, 185, 174),
                      textColor: Colors.black54,
                      fontSize: 16.0);

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
