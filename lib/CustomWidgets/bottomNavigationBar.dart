import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation){
  return BottomNavigationBar(
    currentIndex: itemSelecionado,
    onTap: nextStation,
    selectedItemColor: colorBackground(),
    unselectedItemColor: colorCinza(),
    items: [
      bottomNavigationBarItem(Icons.explore, 'Explore', itemSelecionado == 0),
      bottomNavigationBarItem(Icons.calendar_month, 'Eventos', itemSelecionado == 1),
      BottomNavigationBarItem(
        icon: Container(
          height: 40,
          width: 40, 
          //color: colorBackground(),
          decoration: BoxDecoration(
            color: colorBackground(),
            borderRadius: BorderRadius.circular(20), // Defina o raio da borda aqui
          ),
          child: Center(
            child: Icon(
              Icons.add_box,
              color: Color(0xFFadb5bd),
            ),
          ),
        ),
        label: '',
      ),
      bottomNavigationBarItem(Icons.location_on, 'Mapa', itemSelecionado == 3),
      bottomNavigationBarItem(Icons.account_circle, 'Perfil', itemSelecionado == 4),
    ],
  );
}

BottomNavigationBarItem bottomNavigationBarItem(IconData icon, String texto, bool selecionado) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: selecionado ? colorBackground() : colorCinza(),
    ),
    label: texto,
  );
}