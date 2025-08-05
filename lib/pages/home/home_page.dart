import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/account/account.dart';
import 'package:nubank/pages/home/actions/menu_itens.dart';
import 'package:nubank/pages/home/creditsCard/credit_card.dart';
import 'package:nubank/pages/home/creditsCard/my_credits_cards_page.dart';
import 'package:nubank/pages/home/findOut/find_out.dart';
import 'package:nubank/pages/home/investiments/investiments.dart';
import 'package:nubank/pages/home/models/header.dart';
import 'package:nubank/pages/home/notification/notification_page.dart';
import 'package:nubank/pages/home/security/securiy_life.dart';
import 'package:nubank/pages/home/shopping/shopping_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroudColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.5),
              MyCreditsCards(),
              Divider(thickness: 1.5),
              NotificationPage(),
              Divider(thickness: 1.5),
              CreditCard(),
              Divider(thickness: 1.5),
              Investiments(),
              Divider(thickness: 1.5),
              SecuriyLife(),
              Divider(thickness: 1.5),
              ShoppingView(),
              Divider(thickness: 1.5),
              FindOut(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
