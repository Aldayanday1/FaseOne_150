import 'package:flutter/material.dart';
import 'package:ucp_pam/widgets_makanan/form_makanan.dart';
import 'package:ucp_pam/widgets_makanan/header_makanan.dart';

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
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMakanan(),
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
                  FormMakanan(
                    formKey: formKey,
                    etMakanan: makanan,
                    etMinuman: minuman,
                    etDessert: dessert,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
