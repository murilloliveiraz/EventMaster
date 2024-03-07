import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container cardEvento(String titulo, String imgURL) {
  return Container(
    width: 240,
    height: 320,
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: 150,
                width: 200,
                child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imgURL,
                    fit: BoxFit.cover
                  ),
                )
            ),
            SizedBox(height: 10),
             Text(
                titulo,
                style: GoogleFonts.dmSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network('assets/pessoa3.jpg', fit: BoxFit.cover,),
                  ),
                ),
                Text('20+ interessados', style: GoogleFonts.dmSans(color: colorTituloAzul(), fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on, color: colorCinza(),),
                Text('Allianz Parque, SP', style: GoogleFonts.dmSans(color: colorCinza(), fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    ),
  );
}