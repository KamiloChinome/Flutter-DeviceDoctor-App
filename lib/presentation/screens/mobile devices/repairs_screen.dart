import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class RepairsScreen extends StatelessWidget {
  static const name = 'repairs-screen';
  
  const RepairsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Reparaciones comunes'),
            floating: true,
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => CardSectionWidget(info: repairs[index],),
            childCount: repairs.length
          ))
        ],
      ),
    );
  }
}