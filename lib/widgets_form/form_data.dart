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
                title: const Text('Lelaki'),
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
          // TextFormField(
          //   obscureText: true,
          //   controller: widget.etNotelp,
          //   decoration: InputDecoration(
          //     labelText: "Password",
          //     hintText: "Masukkan Email",
          //     prefixIcon: Icon(Icons.lock),
          //   ),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return "Masukkan password dengan benar";
          //     } else if (value.length <= 6) {
          //       "Masukkan minimal 6 characters";
          //     }
          //     return null;
          //   },
          // ),
        ],
      ),
    );
  }
}


            // value = parameter dari objek validator
            // validator: (value) {
            //   // prefiks = penanda/simbol di awal kalimat
            //   // prefiks r (rawstring) sebagai pendanda bahwa karakter tersebut literal (kalimat tunggal) dan mengabaikan karakter escape (yang ada notasi spt '\n' nya)
            //   bool valid = RegExp(r"@").hasMatch(value!);
            //   if (value.isEmpty) {
            //     return "Masukkan email dengan benar";
            //   } else if (!valid) {
            //     return "Harus ada @";
            //   }
            //   return null;
            // },