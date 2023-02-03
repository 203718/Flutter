import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.title, this.title2, this.img});
  final String? title, title2, img;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: 200,
          height: 200,
          child: Image.asset(img!),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: Text(title!, style: const TextStyle(
            color: Color.fromARGB(255, 88, 61, 138), fontSize: 22, fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: 350,
          margin: const EdgeInsets.only(bottom: 1),
          child: Text(title2!, textAlign: TextAlign.center, 
          style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 131, 131),),
          ),
        )
      ]
    );
  }
}