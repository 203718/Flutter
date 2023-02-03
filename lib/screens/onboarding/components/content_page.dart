import 'package:flutter/material.dart';

AnimatedContainer page({int? index, int? currentPage}) {
  return AnimatedContainer(
    duration: kThemeAnimationDuration,
    margin: const EdgeInsets.only(right: 8.0),
    height: 5,
    width: currentPage == index ? 25 : 15,
    decoration:
        BoxDecoration(color: currentPage == index ? Colors.pink : Color.fromARGB(255, 222, 217, 217), 
        borderRadius: BorderRadius.circular(5.0)),
  );
}