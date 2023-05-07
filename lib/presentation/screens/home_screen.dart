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
            return  _CardOption(assetImage: option.value, text: option.key,);},
          childCount: options.length
          )),
        ]
      )
    );
  }
}

class _CardOption extends StatelessWidget {
  final String assetImage;
  final String text;
  const _CardOption({required this.assetImage, required this.text});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: const <BoxShadow>[
          BoxShadow(offset: Offset(5, 5), blurRadius: 20, color: Colors.black54)
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: size.height * 0.19,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Image(
                image: AssetImage(assetImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only( bottom: 10, top: 5),
            height: size.height * 0.06,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff303030),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            ),
            child: Text(text, style: const TextStyle(fontSize: 25),textAlign: TextAlign.center),
          ),
        ],
      ),
      // child: 
    );
  }
}