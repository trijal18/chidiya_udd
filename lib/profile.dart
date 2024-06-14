import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

var username = 'Trijal';
var gamerTag = 'Noobdy';

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: username,
                hintText: 'Enter your username',
              ),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),

           const SizedBox(height: 20),

            TextFormField(
              decoration: InputDecoration(
                labelText: gamerTag,
                hintText: 'Enter your gamer tag',
              ),
              onChanged: (value) {
                setState(() {
                  gamerTag = value;
                });
              },
            ),

            const SizedBox(height: 20),

            /*ElevatedButton(
              onPressed: () {
                // Handle the form submission with username and gamerTag
                // You can save this data to a database or use it as needed.
                print('Username: $username, Gamer Tag: $gamerTag');
              },
              child: Text('Save Profile'),
            ),*/
          ],
        ),
      ),
    );
  }
}
