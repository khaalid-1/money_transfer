 
import 'package:flutter/material.dart';
import 'package:mobile_transfer/components/BottomNav.dart';
import 'package:get/get.dart';
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: BottomNav(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
