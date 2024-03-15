import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ucp_pam/screen/detail_screen.dart';
import 'package:ucp_pam/widgets_makanan/footer_makanan.dart';
import 'package:ucp_pam/widgets_makanan/form_makanan.dart';

class MakananScreen extends StatefulWidget {
  MakananScreen({super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama : ${widget.nama}",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Telp : ${widget.notelp}",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  FormMakanan(
                    formKey: formKey,
                    etMakanan: makanan,
                    etMinuman: minuman,
                    etDessert: dessert,
                  )
                ],
              ),
            ),
            FooterMakanan(
              onPressedSubmit: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        
                        makanan: makanan.text,
                        minuman: minuman.text,
                        dessert: dessert.text,
                      ),
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
