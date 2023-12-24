import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
              'Plant a\n tree for life',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'pop-Sm',
              //fontWeight: FontWeight.bold,
              wordSpacing: 1,
              letterSpacing: 0.5,
            ),
          ),
          Image.asset("assets/welcome.png",
            fit: BoxFit.cover,
            scale: 1.3,
          ),
          const Text(
            'Quick delivary \n within 10-15 days',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Pop-M',
              fontSize: 20,
              //fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 60),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => HomeScreen(),));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[400],
                shape: BoxShape.circle,
                boxShadow:[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 8,
                  ),
                ],
              ),
              child: Text(
                'Go',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pop-M',
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
