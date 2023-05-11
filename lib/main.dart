import 'package:circuitos_app/config/router/app_router.dart';
import 'package:circuitos_app/config/theme/app_theme.dart';
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'DeviceDoctor',
      routerConfig: appRouter,
      theme: AppTheme().getTheme()
        
    );
  }
}