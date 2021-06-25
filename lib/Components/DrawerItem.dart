import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/AppPages/Counter.dart';

class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
              radius: 70,
            ),
          )),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.arrow_right),
            onTap: () => {Navigator.pop(context)},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Counter'),
            trailing: Icon(Icons.arrow_right),
            onTap: () => {Navigator.pushNamed(context, '/counter')},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.animation),
            title: Text('List of animals'),
            trailing: Icon(Icons.arrow_right),
            onTap: () => {Navigator.pushNamed(context, '/Animals')},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact'),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
