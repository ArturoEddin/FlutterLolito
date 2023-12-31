import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word_app/Prestation/screens/counter_functional_screens.dart';
//import 'package:hello_word_app/Prestation/screens/couter_screens.dart';


void main() {
  
  SystemChrome.setSystemUIOverlayStyle(
  const SystemUiOverlayStyle(
   statusBarBrightness: Brightness.light,
   statusBarColor: Colors.transparent

 )

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      theme:ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo

      ),
      home: const CounterFunctionalScreens(),
    );
  }
}
