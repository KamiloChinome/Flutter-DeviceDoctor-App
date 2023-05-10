import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:flutter/material.dart';
import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:go_router/go_router.dart';


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
            childCount: 9,
            (context, index) => _ToolCard(tool: tools[index]))
          )
        ],
      )
    );
  }
}

class _ToolCard extends StatelessWidget {
  const _ToolCard({required this.tool});

  final TollsModel tool; 

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(30)
        ),
        width: double.infinity,
        height: 500,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 270,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: Image.asset(tool.image, fit: BoxFit.cover,)),
            ),
            const SizedBox(height: 8),
            Text(tool.title, style: textStyle.titleLarge, textAlign: TextAlign.center,),
            const SizedBox(height: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(tool.text, style: textStyle.bodyMedium, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, maxLines: 5,),
              ))
          ],
        ),
      ),
    );
  }
}