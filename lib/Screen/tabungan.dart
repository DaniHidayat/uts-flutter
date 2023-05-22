import 'package:flutter/material.dart';

import '../widget/textInput.dart';
import 'package:intl/intl.dart';

class Tabungan extends StatefulWidget {
  @override
  State<Tabungan> createState() => _TabunganState();
}

class _TabunganState extends State<Tabungan> {
  final TextEditingController penghasilanController = TextEditingController(text: '0');

    final TextEditingController bonusController = TextEditingController(text: '0');

    final TextEditingController pengeluaranController = TextEditingController(text: '0');

    double _hasil = 0;

  @override
  Widget build(BuildContext context) {

  void hitung(){
      double persentase = 2.5;
      double? nilai1 = double.tryParse(penghasilanController.text);
       double? nilai2 = double.tryParse(bonusController.text);
       double? niali3 = double.tryParse(pengeluaranController.text);
       double? hasil = nilai1! + nilai2!;
      double? total = hasil * (persentase / 100);
      print('dani');
      setState(() {
        _hasil = total;
      });
    }
    Widget inputSection(){
     Widget penghasilanInput() {
        return CustomTextFormField(
          title: 'Saldo Tabungan',
          hintText: 'Your Pengahasilan',
          controller: penghasilanController,
        );
      }
      Widget bonus() {
        return CustomTextFormField(
          title: 'Bunga',
          hintText: 'Your Bunga',
          controller: bonusController,
        );
      }
      
      return Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(children: [
          penghasilanInput(),
          bonus(),
       
        ]),
      );
    }
    Widget hasil(){
      return Column(
        children: [
          Text('total zakat'),
          Text(NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(_hasil)),
        ],
      );
    }
    Widget  Tombolhitung(){
      return ElevatedButton(onPressed: (){
        hitung();
      }, child: Text('hitung'));
    }
    
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
           inputSection(),
           Tombolhitung(),
           hasil()
          ],
        ),
      ),
    );
  }
}