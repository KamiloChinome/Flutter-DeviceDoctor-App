import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:circuitos_app/presentation/widgets/shared/info_card_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class DisassemblyScreen extends StatelessWidget {
  static const name = 'disassembly';
  
  const DisassemblyScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Desmontaje y Partes'),
            leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 30,)),
            floating: true,
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text( cellOff, style: textStyle.bodyMedium, textAlign: TextAlign.justify,),
              )
            ]
          )),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 6,
            (context, index) => InfoCard(info: disassembly[index])
          ))
        ],
      )
    );
  }
}