import 'package:eventmaster/CustomWidgets/cardEvento.dart';
import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground(),
      appBar: AppBar(
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
      body: SafeArea(
        child: Column(
          children: [
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
                  color: Color.fromARGB(255, 213, 213, 213),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            cardEvento('Yunk Vino - MAD Vol.2', 'https://i.scdn.co/image/ab6761610000e5eb019e4b48abbc831217ef48e0'),
                            SizedBox(width: 15),
                            cardEvento('Yunk Vino - MAD Vol.2', 'https://i.scdn.co/image/ab6761610000e5eb019e4b48abbc831217ef48e0'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}