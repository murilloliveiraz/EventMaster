
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle fonteTitulo(double tamanho){
  return GoogleFonts.ultra(
    fontSize: tamanho,
    fontWeight: FontWeight.bold
  );
}

TextStyle fonteTextoBold(double tamanho){
  return GoogleFonts.dmSans(
    fontSize: tamanho,
    fontWeight: FontWeight.bold
  );
}

TextStyle fonteTextoRegular(double tamanho){
  return GoogleFonts.dmSans(
    fontSize: tamanho,
    fontWeight: FontWeight.normal
  );
}

Color colorTituloBranco(){
  return const Color(0xFFFFFFFF);
}

Color colorTituloAzul(){
  return const Color(0xFF468FAF);
}

Color colorCinza(){
  return const Color(0xFFadb5bd );
}

Color colorBackground(){
  return const Color(0xFF001F54 );
}