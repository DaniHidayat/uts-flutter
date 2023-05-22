import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
        radius: 100, // Radius lingkaran
        backgroundImage: Image.asset('assets/images/me.jpeg').image,
      ),
              SizedBox(height: 10,),
            Text('Dani'),
             Text('Semester 4'),
              Text('Pengembangan Aplikasi Bergerak'),

          ],
        ),
      ),
    );
  }
}