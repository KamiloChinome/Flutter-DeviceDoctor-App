import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:circuitos_app/domain/data/texts.dart.dart';

class MobileDevicesScreen extends StatelessWidget {
  static const name = 'mobile-devices';
  
  const MobileDevicesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List routes = [
      '/mobile-devices/tools',
      '/mobile-devices/tools',
      '/mobile-devices/tools',
      '/mobile-devices/tools',
      '/mobile-devices/tools',
    ];
    Map<String, String> options = {
      'Herramientas y Equipo': 'assets/images/tools.jpg',
      'Desmontaje': 'assets/images/mobile-devices-disassembly.jpg',
      'Mantenimiento preventivo': 'assets/images/mobile-preventive-maintenance.jpg',
      'Reparaciones': 'assets/images/mobile-troubleshooting.png',
      'Tips': 'assets/images/tips.png',
    };
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Dispositivos Moviles'),
            floating: true,
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(mobileIntro, style: textStyle.bodyMedium, textAlign: TextAlign.justify,),
            )
          ])),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) {
              final option = options.entries.toList()[index];
              return GestureDetector(
                onTap: () => context.push(routes[index]),
                child: CardSectionWidget(
                  assetImage: option.value, 
                  text: option.key
                ),
              );
            } 
          ))
        ],
      ),
    );
  }
}