import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/makanan_screen.dart';
import 'package:ucp_pam/widgets_form/footer_form.dart';
import 'package:ucp_pam/widgets_form/form_data.dart';
import 'package:ucp_pam/widgets_form/header_form.dart';

class DataForm extends StatelessWidget {
  const DataForm({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var alamat = TextEditingController();
    var notelp = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderForm(),
                FormWidget(
                  etNama: nama,
                  etAlamat: alamat,
                  etNotelp: notelp,
                  formKey: formKey,
                ),
                FooterWidget(
                  onPressedSubmit: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakananScreen(
                            nama: nama.text,
                            notelp: notelp.text,
                          ),
                        ),
                      );
                      
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
