import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/controllers/controller_home_page.dart';
import 'package:nubank/utils/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconCreditCards(),
          _textCreditCard(),
          _invoice(),
          _limitDisponivel(),
          _installments(),
        ],
      ),
    );
  }

  _iconCreditCards() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cartão de Credito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4),
        Text('Fatura atual', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return Text(
              (controllerHomePage.creditCardValue),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            );
          },
        ),
      ],
    );
  }

  _limitDisponivel() {
    return const Text(
      'Limite disponível de R\$ 4.000,00',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 16),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: Text(
          'Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
