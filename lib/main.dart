import 'package:flutter/material.dart';
import 'package:tab_bar/shared/theme.dart';
import './Screen/email.dart' as email;
import './Screen/music.dart' as music;
import './Screen/shopping.dart' as  shopping;
import './Screen/telepon.dart' as telepon;
import './Screen/zakat.dart' as zakat;
import './Screen/tabungan.dart' as tabungan;
import './Screen/perdagangan.dart' as perdagangan;
import './Screen/profile.dart' as profile;
void main(){
  runApp(new MaterialApp(
   title: "Hitungan Zakat ",
   home: new Home(),
  ));
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  late TabController controller;

  @override
  
  void initState(){
    controller = new TabController(vsync: this, length: 4);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor:kPrimaryColor,
         //judul
         title: new Text("Hitungan Zakat"),
           //bottom
           bottom: new TabBar(
             controller: controller,
             //source code lanjutan
             tabs: <Widget>[
              new Tab(icon: new Icon(Icons.email),text: "Penghasilan ",),
              new Tab(icon: new Icon(Icons.money),text: "Tabungan",),
              new Tab(icon: new Icon(Icons.shopping_cart),text: "Perdagangan",),
                new Tab(icon: new Icon(Icons.supervised_user_circle_rounded),text: "Profile",),
            
             ],
          ),
      ),  
      body: new TabBarView(
        controller: controller,
        children:<Widget> [
          new zakat.Zakat(),
          new tabungan.Tabungan(),
          new perdagangan.Perdagangan(),
          new profile.Profile(),
         
        ]
      )
    );
  }
}