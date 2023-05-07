import 'package:circuitos_app/data/texts.dart.dart';
import 'package:flutter/material.dart';

class PresentationScreen extends StatelessWidget {
  static const name = 'presentation-screen';
  
  const PresentationScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Presentacion'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(aboutApp, style: textStyle.bodyMedium, textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}