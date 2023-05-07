import 'package:circuitos_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent,));
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomeScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Prompt',
        scaffoldBackgroundColor: const Color(0xff16202a),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white
          ),
        )
      ),
        
    );
  }
}