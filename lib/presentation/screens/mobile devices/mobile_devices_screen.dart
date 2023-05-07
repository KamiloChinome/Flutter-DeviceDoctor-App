import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:circuitos_app/domain/data/texts.dart.dart';

class MobileDevicesScreen extends StatelessWidget {
  static const name = 'mobile-devices';
  
  const MobileDevicesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Dispositivos Moviles'),
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(mobileIntro, style: textStyle.bodyMedium, textAlign: TextAlign.justify,),
            )
          ])),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => const CardSectionWidget(assetImage: 'assets/images/mobile.jpg', text: 'example')
          ))
        ],
      ),
    );
  }
}