import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String gambar;
  final String namaWisata;
  final String hari;
  final String jamBuka;

  const FirstScreen({
    super.key,
    required this.gambar,
    required this.namaWisata,
    required this.hari,
    required this.jamBuka,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(gambar),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(children: <Widget>[
                    Center(
                      child: Text(
                        namaWisata,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const Icon(Icons.calendar_month),
                              const SizedBox(height: 10),
                              Text(hari),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Icon(Icons.schedule),
                              const SizedBox(height: 10),
                              Text(jamBuka),
                            ],
                          ),
                          Column(children: const <Widget>[
                            Icon(Icons.attach_money),
                            SizedBox(height: 10),
                            Text('Rp. 25.000'),
                          ])
                        ]),
                    const SizedBox(height: 20),
                    const Text(
                      'Berada di jalur utama Bandung-Lembang, Farm house menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas eropa. Semua itu diterapkan dalam bentuk spot swafoto instagramable',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // radius yang diinginkan
                                child: Image.asset(
                                    'images/farmhouse-lembang.jpg',
                                    width: 200)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // radius yang diinginkan
                                child: Image.asset(
                                    'images/farmhouse-lembang.jpg',
                                    width: 200)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // radius yang diinginkan
                                child: Image.asset(
                                    'images/farmhouse-lembang.jpg',
                                    width: 200)),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
