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
      body: Container(
        color: colorBackground(),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            Text("Olá, Matheus", style: fonteTextoRegularAzul(16),),
            Text("Explore eventos eletrizantes", style: fonteTextoBoldWhite(20)),
            Container(
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Color(0xFF979797),
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder( // Define as bordas do TextField
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: 'Encontre eventos incríveis',
                  suffixIcon: IconButton(icon: const Icon(Icons.search, color: Colors.white,), onPressed: (){},)
                ),
              ),
            ),
            Row(
              children: [
                Text('Eventos Populares'),
                Text('Veja todos')
              ],
            )
          ],
        ),
      ),
    );
  }
}