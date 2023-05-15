import 'package:animate_do/animate_do.dart';
import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:circuitos_app/presentation/providers/repair_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RepairScreen extends StatelessWidget {
  static const name = 'repair-screen';
  
  const RepairScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(Provider.of<RepairProvider>(context).info.title),
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SliverList(delegate: SliverChildListDelegate([
            _TextCard(Provider.of<RepairProvider>(context).info)
          ]))
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
            Text('Pasos a seguir', style: textStyle.titleLarge,),
            const SizedBox(height: 10),
            Text(text.text, style: textStyle.bodyMedium,)
          ],
        ),
      ),
    );
  }
}
