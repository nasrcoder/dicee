import 'package:flutter/material.dart';
import 'dart:math';

void main()    =>  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.redAccent.shade400,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dicee App',
          style: TextStyle(
            letterSpacing: 5.0,
            color: Colors.yellowAccent,
            fontWeight: FontWeight.w900,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: DicePage(),
    ),
  ),
);
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topimage=1;
  int buttomimage=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            child: Container(
              width: 50,height: 50,
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: () {
                setState(() {
                  topimage= Random().nextInt(5)+1;
                });
                print('Top Dice  $topimage');
              },
              child: Image.asset('images/d$topimage.png'),
            ),
          ),
          SizedBox(
            child: Container(
              width: 100,height: 100,
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: () {
                setState(() {
                  buttomimage= Random().nextInt(5)+1;
                });
                print('Buttom Dice $buttomimage');
              },
              child: Image.asset('images/d$buttomimage.png'),
            ),
          ),
          SizedBox(
            child: Container(
              width: 50,height: 50,
            ),
          ),
        ],
      ),
    );
  }
}



