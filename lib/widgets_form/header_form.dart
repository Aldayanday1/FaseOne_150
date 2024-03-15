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
            "Aldi Resto",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ClipOval(
            child: Image.network(
              'https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bG9nb3xlbnwwfHwwfHx8MA%3D%3D',
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
