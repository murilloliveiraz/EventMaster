import 'package:eventmaster/CustomWidgets/cardLogin.dart';
import 'package:eventmaster/Screens/Explore/explore.dart';
import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: colorBackground(),
        body: SafeArea(
          child: Column(
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  right: 100.0,
                  top: 120,
                  bottom: 20,
                ),
                child: Image.asset('assets/musica.png'),
              ),

              // titulo
              Padding(
                padding: const EdgeInsets.all(28.0),
             child: RichText(
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
        ),

              // seus eventos pertinho de você
              Text(
                'Seus eventos pertinho de você',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: colorTituloBranco(),
                ),
              ),

              const SizedBox(height: 24),

              const Spacer(),

              // get started button
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: const Text(
                    "Comece sua diversão",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      );
    }
  }
}