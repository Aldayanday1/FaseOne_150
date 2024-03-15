import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/form_screen.dart';
import 'package:ucp_pam/widgets_detail/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.makanan,
    required this.minuman,
    required this.dessert,
    required this.nama,
    required this.notelp,
  });

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Nama: $nama",
                ),
                Text(
                  "No. Telp: $notelp",
                ),
                Text(
                  "Makanan : $makanan",
                ),
                Text(
                  "Minuman : $minuman",
                ),
                Text(
                  "Dessert : $dessert",
                ),
              ],
            ),
            FooterDetail(
              onPressedSubmit: () {
                {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataForm(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
