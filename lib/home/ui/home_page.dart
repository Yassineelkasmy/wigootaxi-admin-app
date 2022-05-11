import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxiadmin/home/ui/home_card.dart';
import 'package:wigootaxiadmin/routes/router.gr.dart';
import 'package:wigootaxiadmin/theme/spacings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Espace Admin'),
        ),
        body: Padding(
          padding: kPadding,
          child: Column(
            children: [
              20.h.verticalSpace,
              buildHomeCard(
                text: 'Chauffeurs',
                icon: Icon(Icons.person),
                onPressed: () {
                  AutoRouter.of(context).push(DriversPageRoute());
                },
              ),
              20.h.verticalSpace,
              buildHomeCard(
                text: 'Utilisateurs',
                icon: Icon(Icons.man),
                onPressed: () {},
              ),
              20.h.verticalSpace,
              buildHomeCard(
                  text: 'Demandes',
                  icon: Icon(Icons.car_rental),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
