import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FirstScreen extends StatelessWidget {
  final String gambar;
  final String namaWisata;
  final String hari;
  final String jamBuka;
  final int harga;
  final String description;

  const FirstScreen({
    super.key,
    required this.gambar,
    required this.namaWisata,
    required this.hari,
    required this.jamBuka,
    required this.harga,
    required this.description,
  });

  String formatRupiah(int angka) {
    final formatter = NumberFormat.currency(
      locale: 'id_ID', // set locale ke Indonesia
      decimalDigits: 0, // jumlah digit desimal yang ditampilkan
      symbol: 'Rp', // simbol mata uang yang digunakan
    );

    return formatter.format(angka);
  }

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
                        Column(
                          children: <Widget>[
                            const Icon(Icons.attach_money),
                            const SizedBox(height: 10),
                            Text(harga == 0 ? 'Gratis' : formatRupiah(harga)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 17),
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
