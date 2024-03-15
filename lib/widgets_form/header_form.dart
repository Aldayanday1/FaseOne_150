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
              'https://img.freepik.com/free-vector/leaf-maple-icon-logo-design_474888-2154.jpg?size=338&ext=jpg&ga=GA1.1.1269040533.1710374400&semt=sph',
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
