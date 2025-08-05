import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [_rendimentos(), _rendimentos2()]),
    );
  }

  _rendimentos() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Seu ',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: "Informe de \nRendimentos ",
              style: TextStyle(color: backgroudColor, fontSize: 16),
            ),
            TextSpan(
              text: "de 2025 já está...",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _rendimentos2() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Seu ',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: "Informe de \nRendimentos ",
              style: TextStyle(color: backgroudColor, fontSize: 16),
            ),
            TextSpan(
              text: "de 2025 já está...",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
