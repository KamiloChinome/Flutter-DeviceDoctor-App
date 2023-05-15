import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:circuitos_app/domain/data/texts.dart.dart';

class LaptopsScreen extends StatelessWidget {
  static const name = 'laptops';
  
  const LaptopsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final List<InfoModel> info = laptops;
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Computadoras'),
            floating: true,
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(laptopsIntro, style: textStyle.bodyMedium, textAlign: TextAlign.justify,),
            )
          ])),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: laptops.length,
            (context, index) {
              return GestureDetector(
                onTap: () => context.push(info[index].route),
                child: CardSectionWidget(info: info[index],),
              );
            } 
          ))
        ],
      ),
    );
  }
}