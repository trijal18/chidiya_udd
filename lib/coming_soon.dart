import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("coming soon...."),
          SizedBox(height: 30,),
          ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Custom button color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: const Color.fromARGB(255, 6, 7, 7).withOpacity(0.5),
                elevation: 5,
              ),
              child: const Text(
                "Back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },),
        ],
      )),
    ));
  }
}
