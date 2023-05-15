import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:circuitos_app/presentation/widgets/shared/info_card_widget.dart';
import 'package:circuitos_app/domain/data/texts.dart.dart';


class ToolsScreen extends StatelessWidget {
  static const name = 'tools-and-Equip';
  
  const ToolsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Herramientas y Equipo'),
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 30,)),
            floating: true,
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: tools.length,
            (context, index) => InfoCard(info: tools[index]))
          )
        ],
      )
    );
  }
}

