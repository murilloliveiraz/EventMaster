import 'package:flutter/material.dart';

Container cardGoogle( String img, double largura, double altura, Color? color, String texto){
  return Container(
    margin: const EdgeInsets.fromLTRB(8, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(img),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(texto, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900) ,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
