import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.person,
                    size: 100.0,
                  ),
                  TextButton(
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  )
                ],
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Main menu'),
            onTap: () {
              Navigator.pop(context); // Handle the Home item tap
            },
          ),
          ListTile(
              leading: Icon(Icons.score),
              title: Text('High score'),
              onTap: () {
                Navigator.pushNamed(context, '/ComingSoon');
              }),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Rules'),
            onTap: () {
              Navigator.pushNamed(context, '/ComingSoon');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/ComingSoon');
            },
          ),
        ],
      ),
    );
  }
}
