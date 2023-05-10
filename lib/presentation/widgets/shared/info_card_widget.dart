import 'package:animate_do/animate_do.dart';
import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.info});

  final InfoModel info; 

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return FadeInRight(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff303030),
            borderRadius: BorderRadius.circular(30)
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  child: Image.asset(info.image, fit: BoxFit.cover,)),
              ),
              const SizedBox(height: 8),
              Text(info.title, style: textStyle.titleLarge, textAlign: TextAlign.center,),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(info.text, style: textStyle.bodyMedium, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, maxLines: 10,),
              )
            ],
          ),
        ),
      ),
    );
  }
}