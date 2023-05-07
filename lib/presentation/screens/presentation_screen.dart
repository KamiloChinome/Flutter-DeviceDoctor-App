import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PresentationScreen extends StatelessWidget {
  static const name = 'presentation-screen';
  
  const PresentationScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new)),
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