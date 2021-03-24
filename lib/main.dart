import 'package:flutter/material.dart';
import 'HomeScreen/components/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZdcApp',
      home: Scaffold(
        body: Navbar(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 70,
          ),
          child: RawMaterialButton(
            fillColor: Colors.pink[100],
            shape: StadiumBorder(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.alarm_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Hatirlama Ekle",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
