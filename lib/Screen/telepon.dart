import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Telepon extends StatelessWidget {
  const Telepon({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
             new Padding(padding: new EdgeInsets.all(20.0),),
             new Icon(Icons.phone_android,size: 90.0,color: Colors.lightBlueAccent,),
             new Text("Phone",style: new TextStyle(fontSize: 30.0,color: Colors.lightGreen),)
          ],
        ),
      ),
    );
  }
}