import 'package:eventmaster/Screens/Intro/intropage.dart';
import 'package:eventmaster/Screens/Explore/explore.dart';
import 'package:eventmaster/customWidgets/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroPage(),
    );
  }
}

//Column(
  //children: [
    //cardEvento('Yunk Vino - MAD Vol.2', 'https://i.scdn.co/image/ab6761610000e5eb019e4b48abbc831217ef48e0'),
  //],
//)