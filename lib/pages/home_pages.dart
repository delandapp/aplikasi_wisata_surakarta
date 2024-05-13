import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdicoding/pages/detail_pages.dart';

import '../data/data_wisata.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E3232),
        title: const Text(
          "Wisata Kota Surakarta",
          style: TextStyle(fontFamily: "PoetsenOne", color: Color(0xFFA87C7C)),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: tourismPlaceList
              .map((e) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            wisata: e,
                          ),
                        ),
                      );
                    },
                    child: CardWisata(
                        imageNetwork: e.imageAsset,
                        location: e.location,
                        judul: e.name),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class CardWisata extends StatelessWidget {
  String imageNetwork, judul, location;

  CardWisata(
      {super.key,
      required this.imageNetwork,
      required this.location,
      required this.judul});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(
              0.1,
              0.1,
            ),
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ], borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  child: Image.network(
                    imageNetwork,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    judul,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(location)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
