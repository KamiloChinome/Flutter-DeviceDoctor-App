import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';
import 'package:circuitos_app/domain/models/tools_model.dart';

class PreventiveScreen extends StatelessWidget {
  static const name = 'preventive-screen';
  
  const PreventiveScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Prevenciones'),
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 6,
            (context, index) => _TextCard(preventive[index])
          ))
        ],
      )
    );
  }
}

class _TextCard extends StatelessWidget {
  const _TextCard(this.text);

  final InfoModel text; 

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return FadeInRight(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff303030),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text.title, style: textStyle.titleLarge,),
            const SizedBox(height: 10),
            Text(text.text, style: textStyle.bodyMedium,)
          ],
        ),
      ),
    );
  }
}