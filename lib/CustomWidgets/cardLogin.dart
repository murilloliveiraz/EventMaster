import 'package:eventmaster/CustomWidgets/cardGoogle.dart';
import 'package:eventmaster/Screens/Explore/explore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          child: const Text(
           "EventMaster",
           style: TextStyle(
            color: Colors.white
           ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 47, 62, 201),
              Color.fromARGB(255, 39, 56, 218),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              "Sign in", 
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const CupertinoTextField(
              prefix: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SizedBox(
                      child: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 88, 194, 233),
                      size: 20,
                      ),
                    ),
                  )
                ],
              ),
              cursorColor: Color.fromARGB(255, 0, 0, 0),
              padding: EdgeInsets.all(15),
              placeholder: "Digite o seu e-mail",
              placeholderStyle: TextStyle(color: Color.fromARGB(122, 0, 0, 0), fontSize: 10),
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  )),
            ),
            const SizedBox(height: 20),
            const CupertinoTextField(
               prefix: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 88, 194, 233),
                      size: 20,
                      ),
                  )
                ],
              ),
              padding: EdgeInsets.all(15),
              cursorColor: Color.fromARGB(255, 0, 0, 0),
              placeholder: "Digite sua senha",
              obscureText: true,
              placeholderStyle: TextStyle(color: Color.fromARGB(137, 0, 0, 0), fontSize: 10),
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  )),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                padding: const EdgeInsets.all(17),
                color: Color.fromARGB(255, 88, 194, 233),
                child: const Text(
                  "ENTRE",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Explore()),
                  );
                },
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: const Text("Esqueceu sua senha ?", 
                textAlign: TextAlign.end , 
                style: TextStyle(
                color: Color.fromARGB(255, 88, 194, 233),
                fontWeight: FontWeight.w900
              ),
             ),
            ),
            const SizedBox(height: 40),
            Container(
              child: const Text("OU", style: TextStyle(
                color: Colors.white
              ),
             ),
            ),
            const SizedBox(height: 30),
            cardGoogle("assets/googleLogo.png", 250, 70, Colors.white, "Faça login pelo Google"),         
            cardGoogle("assets/faceLogo.png", 250, 70, Colors.white, "Faça login pelo Facebook"),       
          ],
        ),
      ),
    );
  }
}