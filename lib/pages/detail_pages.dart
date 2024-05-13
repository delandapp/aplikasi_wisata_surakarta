import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdicoding/class/wisata.dart';

class DetailScreen extends StatelessWidget {
  final Wisata wisata;
  const DetailScreen({super.key,required this.wisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisata.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // Agar Lebar Column Memenuhi layar
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(wisata.imageAsset,height: 200,width: double.infinity,fit: BoxFit.cover,),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  wisata.name,
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PoetsenOne'),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Icon(Icons.calendar_today),
                          const SizedBox(height: 8.0),
                          FittedBox(
                            child: Text(
                              wisata.openDays,
                              style: const TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Icon(Icons.access_time_outlined),
                          const SizedBox(height: 8.0),
                          FittedBox(
                            child: Text(
                              wisata.openTime,
                              style: const TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Icon(Icons.currency_exchange_outlined),
                          const SizedBox(height: 8.0),
                          Text(
                            wisata.ticketPrice,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: wisata.imageUrls.map((e) => CardImage(imageUrl: e)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  String imageUrl;
  CardImage({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            imageUrl),
      ),
    );
  }
}
