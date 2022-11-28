//imports libs and packages 
import 'package:flutter/material.dart';
import 'view/screen/splashScreen2.dart';
//=====================================
void main(){
  runApp(const MyApp());
}

//============== oop ================
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCustomSplashScreen(),
    );
  }
}