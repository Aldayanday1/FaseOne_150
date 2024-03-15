import 'package:flutter/material.dart';

class FooterMakanan extends StatelessWidget {
  const FooterMakanan({
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
          child: Center(
            child: ElevatedButton(
              onPressed: onPressedSubmit,
              child: Text("Submit"),
            ),
          ),
        ),
      ],
    );
  }
}
