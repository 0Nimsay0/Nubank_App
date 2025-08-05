import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class Investiments extends StatelessWidget {
  const Investiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_textInvestments(), _investmentsValue(), _consultValue()],
      ),
    );
  }

  _textInvestments() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Investimentos',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _investmentsValue() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        'O jeito Nu de Investir: sem asteriscos, \n linguagem facil a partir de R\$ 1.  Saiba main',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _consultValue() {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(MdiIcons.cash),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Consultar saldo para tranferência',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
