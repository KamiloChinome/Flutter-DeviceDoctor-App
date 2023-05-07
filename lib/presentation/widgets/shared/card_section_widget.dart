import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CardSectionWidget extends StatelessWidget {

  final String assetImage;
  final String text;
  const CardSectionWidget({super.key, required this.assetImage, required this.text});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInRight(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        height: size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const <BoxShadow>[
            BoxShadow(offset: Offset(5, 5), blurRadius: 20, color: Colors.black54)
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height * 0.19,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: Image(
                  image: AssetImage(assetImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only( bottom: 10, top: 5),
              height: size.height * 0.06,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff303030),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              ),
              child: Text(text, style: const TextStyle(fontSize: 25),textAlign: TextAlign.center),
            ),
          ],
        ),
        // child: 
      ),
    );
  }
}