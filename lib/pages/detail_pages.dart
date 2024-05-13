import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          // Agar Lebar Column Memenuhi layar
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text('Farm House Lembang',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Everyday'),
                    ],
                  ), Column(
                    children: <Widget>[
                      Icon(Icons.access_time_outlined),
                      SizedBox(height: 8.0),
                      Text('09.00 - 20.00'),
                    ],
                  ), Column(
                    children: <Widget>[
                      Icon(Icons.currency_exchange_outlined),
                      SizedBox(height: 8.0),
                      Text('Rp 25.000'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}