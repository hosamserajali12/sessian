import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controler.dart';
import 'package:task/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context){
        return HomeController();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  MyHomePage(),
        
      ),
    );
  }
}
