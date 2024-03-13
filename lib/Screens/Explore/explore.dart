import 'package:eventmaster/CustomWidgets/bottomNavigationBar.dart';
import 'package:eventmaster/CustomWidgets/cardEvento.dart';
import 'package:eventmaster/CustomWidgets/eventTopic.dart';
import 'package:eventmaster/Screens/ProfileScreen/profileScreen.dart';
import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int itemSelecionado = 0;

  List<Widget> telas = const [
    ExploreScreen(),
    Text('Inicio'),
    ProfileScreen(),
  ];

  void nextStation(int posicao){
    
    setState(() {
      itemSelecionado = posicao;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground(),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
      body: telas[itemSelecionado],
    );
  }
}

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
          AppBar(
                backgroundColor: colorBackground(),
                leading: Icon(Icons.menu, color: colorCinza(),),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Event",
                        style: fonteTitulo(22)
                      ),
                      TextSpan(
                        text: "Master",
                        style: GoogleFonts.getFont( 'Ultra',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                      ),
                    ],
                  ),
                ),
                actions: const [
                  Icon(Icons.circle_notifications_outlined, size: 30, color: Color(0xFFadb5bd),)
                ],
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Text("Olá, Matheus", style: fonteTextoRegularAzul(16),),
                  const SizedBox(height: 10,),
                  Text("Explore eventos eletrizantes", style: fonteTextoBoldWhite(20)),
                  const SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(92, 151, 151, 151),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.white),
                        const SizedBox(width: 5),
                        Text('Encontre eventos incríveis', style: GoogleFonts.dmSans(
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Eventos Populares', style: GoogleFonts.dmSans(color: colorTituloBranco(), fontSize: 18)),
                      Text('Veja todos', style: GoogleFonts.dmSans(color: colorTituloAzul()),)
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
                  child: Container(
                    color: const Color.fromARGB(255, 213, 213, 213),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                    cardEvento('Travis Scott - UTOPIA', 'https://www.vagalume.com.br/dynimage/news49347-big.jpg'),
                                    cardEvento('Yunk Vino - MAD Vol.2', 'https://i.scdn.co/image/ab6761610000e5eb019e4b48abbc831217ef48e0'),
                                    const SizedBox(width: 15),
                                    cardEvento('Kyan - Dias Antes de Mandrake', 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/e3/79/c1/e379c191-7a20-d93b-20e6-94718454ad7b/8445162930352.jpg/1200x1200bb.jpg'),
                                    const SizedBox(width: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 60,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                eventTopic('Festivais de música'),
                                eventTopic('Festivais de arte'),
                                eventTopic('Espetáculos'),
                                eventTopic('CENA 2k24'),
                                eventTopic('RepFestival'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      );
  }
}