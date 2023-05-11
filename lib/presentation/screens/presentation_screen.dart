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
        title: const Text('Creditos'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(aboutApp, style: textStyle.bodyMedium, textAlign: TextAlign.center,),
                const SizedBox(height: 10,),   
                Text('Las imagenes no citadas en estos creditos son tomadas de pixabay, imagenes totalmente sin dereschos de autor y sin obligacion de cita alguna', style: textStyle.bodyMedium, textAlign: TextAlign.center,),
                const SizedBox(height: 10,),              
                Text('la imagen "puerto-movil" fue tomada de: https://micelular.org/no-carga/como-arreglar-el-pin-de-carga/ ', style: textStyle.bodyMedium, textAlign: TextAlign.center,),
                const SizedBox(height: 10,),              
                Text('la imagen "reparar-botonmovil" fue tomada de: https://jgwong.org/blog/2014/11/05/como-arreglar-el-boton-de-encendido-de-nokia-lumia-520/', style: textStyle.bodyMedium, textAlign: TextAlign.center,),
                const SizedBox(height: 10,),              
                ],
            ),
          ),
        ),
      ),
    );
  }
}