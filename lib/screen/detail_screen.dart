import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/form_screen.dart';
import 'package:ucp_pam/widgets_detail/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.makanan,
    required this.minuman,
    required this.dessert,
    required this.nama,
    required this.notelp,
  }) : super(key: key);

  final String nama;
  final String notelp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Detail Pemesanan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Nama: $nama",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "No. Telp: $notelp",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "Pesanan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Makanan: $makanan",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Minuman: $minuman",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Dessert: $dessert",
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            FooterDetail(
              onPressedSubmit: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataForm(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
