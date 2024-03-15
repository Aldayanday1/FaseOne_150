import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum SingingCharacter { Perempuan, Lelaki }

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
    required this.formKey,
    required this.etNama,
    required this.etAlamat,
    required this.etNotelp,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etAlamat;
  final TextEditingController etNotelp;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  SingingCharacter? _lelaki = SingingCharacter.Lelaki;
  SingingCharacter? _perempuan = SingingCharacter.Perempuan;
  @override
  Widget build(BuildContext context) {
    return Form(
      // Properti 'Widget.' (khusus kelas Stateful) digunakan sebagai properti yang menerima parameter dari kelas induk 'Form Widget'
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.etNama,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: "Nama",
                hintText: "Masukkan Nama",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.etNotelp,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: "No Telepon",
                hintText: "Masukkan No Telepon",
                prefixIcon: Icon(Icons.phone),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nomor telepon harus diisi';
                }
                return null;
              },
            ),
            SizedBox(height: 25),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: widget.etAlamat,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: "Alamat",
                hintText: "Masukkan Alamat",
                prefixIcon: Icon(Icons.home),
              ),
            ),
            SizedBox(height: 25),
            Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Perempuan'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Perempuan,
                    groupValue: _lelaki,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _lelaki = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Laki-Laki'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Lelaki,
                    groupValue: _perempuan,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _perempuan = value;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
