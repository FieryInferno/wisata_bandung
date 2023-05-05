import 'package:flutter/material.dart';
import 'package:wisata_bandung/blog_item.dart';
import 'package:wisata_bandung/list_wisata.dart';
import 'package:wisata_bandung/first_screen.dart';

class _BlogList extends State<BlogList> {
  final List<Map> listWisata = ListWisata().list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: listWisata.length,
          itemBuilder: (BuildContext context, index) {
            Map dataWisata = listWisata[index];

            return InkWell(
              child: BlogItem(index: index),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FirstScreen(
                    gambar: dataWisata['gambar'],
                    namaWisata: dataWisata['nama_wisata'],
                    hari: dataWisata['hari'],
                    jamBuka: dataWisata['jam_buka'],
                    harga: dataWisata['harga'],
                    description: dataWisata['description'],
                  );
                }),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) {
            return const SizedBox(height: 5);
          },
        ),
      ),
    );
  }
}

class BlogList extends StatefulWidget {
  const BlogList({super.key});

  @override
  _BlogList createState() => _BlogList();
}
