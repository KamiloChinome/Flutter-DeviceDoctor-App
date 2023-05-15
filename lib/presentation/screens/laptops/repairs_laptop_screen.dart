import 'package:circuitos_app/domain/data/texts.dart.dart';
import 'package:circuitos_app/presentation/providers/repair_provider.dart';
import 'package:circuitos_app/presentation/widgets/shared/card_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


class RepairsLaptopsScreen extends StatelessWidget {
  static const name = 'laptop-repairs-screen';
  
  const RepairsLaptopsScreen({Key? key}) : super(key: key);
  
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
            (context, index) => _Repairs(index),
            childCount: laptoprepairs.length
          ))
        ],
      ),
    );
  }
}

class _Repairs extends StatelessWidget {
  const _Repairs(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: (){
        Provider.of<RepairProvider>(context, listen: false).info = repairs[index];
        context.push(laptoprepairs[index].route);
      },
      child: CardSectionWidget(info: laptoprepairs[index],));
  }
}