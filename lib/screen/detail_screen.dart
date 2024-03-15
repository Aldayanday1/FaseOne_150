import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/form_screen.dart';
import 'package:ucp_pam/widgets_detail/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.makanan,
      required this.minuman,
      required this.dessert});

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
              onPressedSubmit: () { {
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
