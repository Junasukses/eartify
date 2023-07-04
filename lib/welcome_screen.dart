import 'package:eartify/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/bgwelcome2.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Plant a tree",
                    style: TextStyle(
                      color: Color(0xFFE4ECE2),
                      fontSize: 25,
                      fontFamily: "Carot",
                    ),
                    children: [
                      TextSpan(
                        text: " &",
                        style: TextStyle(
                          color: Color(0xFFABBD72),
                          fontFamily: "Montserrat",
                        ),
                      ),
                      TextSpan(
                        text: "\nsave our planet",
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "One planted tree cost you nothing",
                  style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFFABBD72),
                      fontFamily: "Carot",
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 9),
                child: const Text(
                  "but can really help to cure the Earth",
                  style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFFABBD72),
                      fontFamily: "Carot",
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: MainScreen(),
                            type: PageTransitionType.fade,
                            duration: Duration(seconds: 2)));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFFABBD72),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15)),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontFamily: "Carot", color: Color(0xFFE4ECE2)),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text("Let's Plant"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
