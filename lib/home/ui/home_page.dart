import 'package:flutter/material.dart';
import 'package:wigootaxiadmin/home/ui/home_card.dart';
import 'package:wigootaxiadmin/theme/spacings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            buildHomeCard(
                text: 'Utilisateurs',
                icon: Icon(Icons.person),
                onPressed: () {}),
            buildHomeCard(
                text: 'Demandes',
                icon: Icon(Icons.car_rental),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
