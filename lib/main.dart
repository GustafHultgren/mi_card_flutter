import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  'https://cdn.vuetifyjs.com/images/lists/1.jpg',
                ),
              ),
              Text(
                'Gustaf Hultgren',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'BYON8 DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal[100],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.blue[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'gustaf.hultgren@mail.com',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blue[900],
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+44 55 32 521',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blue[900],
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactContainer extends StatelessWidget {
  const ContactContainer(
    this.text,
    this.icon, {
    Key key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  // String get text => text;
  // IconData get icon => icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10.0),
          Text(text,
              style: TextStyle(
                color: Colors.blue.shade900,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ))
        ],
      ),
    );
  }
}
