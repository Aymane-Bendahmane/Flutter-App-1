import 'package:flutter/material.dart';
import 'package:myfirstapp/Components/DrawerItem.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(),
      appBar: AppBar(backgroundColor: Colors.black, title: Text('List View')),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int i = 0; i < 10; i++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(
                    child: Text('$i'),
                  ),
                ),
                title: Text('testo : $i'),
              ),
          ],
        ),
      ),
    );
  }
}
