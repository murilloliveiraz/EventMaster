import 'package:eventmaster/Screens/Explore/explore.dart';
import 'package:eventmaster/customWidgets/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }

  List<Widget> telas = const [
    Explore(),
    Text('Eventos'),
    Text('Inicio'),
    Text('Mapa'),
    Text('Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}

//Column(
  //children: [
    //cardEvento('Yunk Vino - MAD Vol.2', 'https://i.scdn.co/image/ab6761610000e5eb019e4b48abbc831217ef48e0'),
  //],
//)