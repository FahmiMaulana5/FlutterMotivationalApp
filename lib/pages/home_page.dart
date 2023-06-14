import 'dart:math';

import 'package:flutter/material.dart';
import 'package:MotivationalApp/src/list_motivation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? _motivationSelected;
  String _messageException = "Ayo klik tombol di bawah untuk mendapakan motivasi !";

  void selectRandomMotivation() {
    Random random = Random();
    int randomIndex = random.nextInt(ListMotivation.motivationalQuotes.length);
    setState(() {
      _motivationSelected = ListMotivation.motivationalQuotes[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDCEDF),
        title: Text('Aku butuh motivasi', style: TextStyle(fontSize: 20, color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF8E8EE),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Text(
                _motivationSelected != null ? _motivationSelected! : _messageException,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              )
            ),
          ),
          height: 150,
          width: 300,
        )
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF2BED1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide.none
                )
              )
            ),
            onPressed: () {
              selectRandomMotivation();
            }, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Berikan aku motivasi !', style: TextStyle(fontSize: 15),)
              ],
            )
          ),
        ),
      ),
    );
  }
}