import 'package:flutter/material.dart';

class FooterDetail extends StatelessWidget {
  const FooterDetail({
    super.key,
    required this.onPressedSubmit,
  });

  final VoidCallback onPressedSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, bottom: 25),
          child: ElevatedButton(
            onPressed: onPressedSubmit,
            child: Text("Selesai"),
          ),
        ),
      ],
    );
  }
}
