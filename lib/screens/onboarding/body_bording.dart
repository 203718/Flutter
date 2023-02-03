import 'package:flutter/material.dart';
import 'package:login/screens/onboarding/components/onboardin.dart';

class BodyBoarding extends StatefulWidget {
  const BodyBoarding({super.key});

  @override
  State<BodyBoarding> createState() => BodyBoardingState();
}

class BodyBoardingState extends State<BodyBoarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Onboarding(),);
  }
}