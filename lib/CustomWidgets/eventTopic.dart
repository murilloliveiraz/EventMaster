import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';

Container eventTopic(String texto){
  return Container(
      width: 150,
      height: 40,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colorBackground(),
        borderRadius: BorderRadius.circular(50)),
      child:
          Text(texto, style: fonteTextoRegularWhite(14), textAlign: TextAlign.center,)
  );
}