import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final List<InfoModel> info = homeSections;
    final textStyle = Theme.of(context).textTheme;
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
            return  GestureDetector(
              onTap: () => context.push(info[index].route),
              child: CardSectionWidget(info: info[index],));},
          childCount: info.length
          )),
        ]
      )
    );
  }
}

