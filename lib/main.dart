import 'package:flutter/material.dart';
import 'appDrawer.dart';
import 'single_player.dart';
import 'coming_soon.dart';
import 'profile.dart';
import 'lvl0.dart';
import 'lvl1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/SinglePlayer': (context) => Singleplayer(),
        '/HomePage': (context) => HomePage(),
        '/ComingSoon': (context) => ComingSoon(),
        '/profile': (context) => ProfilePage(),
        '/lvl0': (context) => LevelZero(),
        '/lvl1':(context) => LevelOne(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CHIDIYA UDD'),
      ),
      drawer: MyDrawer(), // Add the drawer to the Scaffold
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Welcome!",
            style: TextStyle(
              color: Color.fromARGB(255, 13, 106, 182),
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              fixedSize: Size(300, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.blue.withOpacity(0.5),
              elevation: 5,
            ),
            child: const Text(
              "Single Player",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/SinglePlayer');
            },
          ),

          const SizedBox(
            height: 50,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              fixedSize: Size(300, 100),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.blue.withOpacity(0.5),
              elevation: 5,
            ),
            child: const Text(
              "Online",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/ComingSoon');
            },
          ),

          const SizedBox(
            height: 50,
          ),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              fixedSize: Size(300, 100),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.blue.withOpacity(0.5),
              elevation: 5,
            ),
            child: const Text(
              "Custom Room",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/ComingSoon');
            },
          ),
        ],
      )),
    );
  }
}
