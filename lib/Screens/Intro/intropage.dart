import 'package:eventmaster/Screens/Explore/explore.dart';
import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), // Tempo total da tela de introdução
    );

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();

    // Após 3 segundos, navegue para a próxima tela
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Explore()));
    });
  }


  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: colorBackground(),
        body: SafeArea(
          child: FadeTransition(
            opacity: _animation,
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
                  style: fonteTitulo(28)
                ),
                TextSpan(
                  text: "Master",
                  style: GoogleFonts.getFont( 'Ultra',
                      fontSize: 28,
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
                        return const Explore();
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
        ),
      );
    }
  }
}