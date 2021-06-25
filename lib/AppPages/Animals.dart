import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(backgroundColor: Colors.black, title: Text('Counter')),
        body: ListView(
          children: [
            Card(
              child: cardsf('Lion','Strong animal','the king of the jungle','https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
            ),
            Card(
              child: cardsf('Cat','Cute animal pet','one of the best human friends','https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80'),

            ),
            Card(
              child: cardsf('Panda','huge animal','friendly animal / cute','https://images.unsplash.com/photo-1564349683136-77e08dba1ef7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1052&q=80'),
            ),
            Card(
              child: cardsf('Giraffe', 'Vegetarian', 'Tall Animal with a huge Neck', 'https://images.unsplash.com/photo-1574870111867-089730e5a72b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
            )
          ],
        ),
      ),

    );
  }

  cardsf(String name,String subtitle,String description,String imageLink){
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title:  Text(name),
          subtitle: Text(
            subtitle,
            style:
            TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            description,
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
        ),
        Image.network(imageLink),

      ],
    );
  }
}
