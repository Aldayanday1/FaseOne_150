import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Data Form",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ClipOval(
            child: Image.network(
              'https://media.designrush.com/articles/463030/conversions/Pepsi_New-details.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        )
      ],
    );
  }
}
