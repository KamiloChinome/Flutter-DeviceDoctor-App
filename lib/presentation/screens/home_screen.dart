import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    Map<String, String> options = {
      'dispositivos moviles': 'assets/images/mobile.jpg',
      'Computadoras': 'assets/images/pc.jpg',
      'Noticias de tecnologia': 'assets/images/news.jpg',
      'Evalua tus conocimientos': 'assets/images/test.jpg',
    };
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text('Device Doctor', style: textStyle.titleLarge),
            actions: [
              IconButton(
                onPressed: () => context.push('/presentation'), 
                icon: const Icon(Icons.info_outline_rounded, size: 32,),
              ),
              const SizedBox(width: 5,)
            ],
            leading: const Icon(Icons.menu, size: 30,),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            final option = options.entries.toList()[index];
            return  GestureDetector(
              onTap: () => context.push('/mobile-devices'),
              child: CardSectionWidget(assetImage: option.value, text: option.key,));},
          childCount: options.length
          )),
        ]
      )
    );
  }
}

