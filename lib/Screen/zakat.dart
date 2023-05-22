import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widget/textInput.dart';

class Zakat extends StatefulWidget {
  @override
  State<Zakat> createState() => _ZakatState();
}

class _ZakatState extends State<Zakat> {
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
       double? hasil = nilai1! + nilai2! - niali3!;
      double? total = hasil * (persentase / 100);
      print('dani');
      setState(() {
        _hasil = total;
      });
    }
    Widget inputSection(){
     Widget penghasilanInput() {
        return CustomTextFormField(
          title: 'Pengahasilan',
          hintText: 'Your Pengahasilan',
          controller: penghasilanController,
        );
      }
      Widget bonus() {
        return CustomTextFormField(
          title: 'Bonus',
          hintText: 'Your Bonus',
          controller: bonusController,
        );
      }
       Widget pengeluaran() {
        return CustomTextFormField(
          title: 'Pengeluaran',
          hintText: 'Your Pengeluaran',
          controller: pengeluaranController,
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
          pengeluaran()
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