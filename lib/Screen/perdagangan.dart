import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widget/textInput.dart';

class Perdagangan extends StatefulWidget {
  @override
  State<Perdagangan> createState() => _PerdaganganState();
}

class _PerdaganganState extends State<Perdagangan> {
  final TextEditingController modalController = TextEditingController(text: '0');

    final TextEditingController keuntunganController = TextEditingController(text: '0');

    final TextEditingController hutangDagangController = TextEditingController(text: '0');

    final TextEditingController hutangTempoController = TextEditingController(text: '0');

    final TextEditingController kerugianController = TextEditingController(text: '0');
    double _hasil = 0;

  @override
  Widget build(BuildContext context) {

void hitung(){
      double persentase = 2.5;
      double? nilai1 = double.tryParse(modalController.text);
       double? nilai2 = double.tryParse(keuntunganController.text);
       double? nilai3 = double.tryParse(hutangDagangController.text);
        double? nilai4 = double.tryParse(hutangTempoController.text);
        double? nilai5 = double.tryParse(kerugianController.text);
       double? hasil = nilai1! + nilai2! - nilai3! - nilai4! - nilai5!;
      double? total = hasil * (persentase / 100);
      print('dani');
      setState(() {
        _hasil = total;
      });
    }
    Widget inputSection(){
     Widget modalInput() {
        return CustomTextFormField(
          title: 'Modal',
          hintText: 'Your Modal yang  Diputar selama 1 tahun',
          controller: modalController,
        );
      }
      Widget keuntungan() {
        return CustomTextFormField(
          title: 'Keuntungan',
          hintText: 'Your Keuntungan dalam 1 tahun',
          controller: keuntunganController,
        );
      }
       Widget hutangDagang() {
        return CustomTextFormField(
          title: 'Hutang Dagang',
          hintText: 'Your Hutang Dagang',
          controller: hutangDagangController,
        );
      }
       Widget hutangTempo() {
        return CustomTextFormField(
          title: 'Hutang Tempo',
          hintText: 'Your Hutang Tempo',
          controller: hutangTempoController,
        );
      }
      Widget kerugian() {
        return CustomTextFormField(
          title: 'Kerugian',
          hintText: 'Your Hutang Kerugian',
          controller: kerugianController,
        );
      }
      return Container(
  margin: EdgeInsets.only(top: 30),
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        modalInput(),
        keuntungan(),
        hutangDagang(),
        hutangTempo(),
        kerugian(),
      ],
    ),
  );

    }
    Widget hasil(){
      return Column(
        children: [
          Text('total Zakat'),
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             inputSection(),
             Tombolhitung(),
             hasil()
            ],
          ),
        ),
      ),
    );
  }
}