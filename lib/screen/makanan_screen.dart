import 'package:flutter/material.dart';

class MakananScreen extends StatefulWidget {
  MakananScreen({super.key, required this.nama, required this.notelp});

  var makanan = TextEditingController();
  var minuman = TextEditingController();
  var dessert = TextEditingController();

  final String nama;
  final String notelp;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Nama : ${widget.nama}",
                  ),
                  Text(
                    "Telp : ${widget.notelp}",
                  ),
                  // FormMakanan(
                  //     formKey: formKey,
                  //     etMakanan: etMakanan,
                  //     etMinuman: etMinuman,
                  //     etDessert: etDessert)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
