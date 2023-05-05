import 'package:flutter/material.dart';
import 'package:wisata_bandung/list_wisata.dart';

class _BlogItem extends State<BlogItem> {
  final List<Map> listWisata = ListWisata().list;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    listWisata[widget.index]['gambar'],
                    width: 150,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listWisata[widget.index]['nama_wisata'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(listWisata[widget.index]['lokasi']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogItem extends StatefulWidget {
  final int index;
  const BlogItem({super.key, required this.index});

  @override
  _BlogItem createState() => _BlogItem();
}
