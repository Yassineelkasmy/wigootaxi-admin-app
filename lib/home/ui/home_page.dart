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
          title: Text('Admin WIGOO TAXI'),
        ),
        body: Padding(
          padding: kPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  35.h.horizontalSpace,
                  buildHomeCard(
                    text: 'Chauffeurs',
                    icon: Icons.person,
                    onPressed: () {
                      AutoRouter.of(context).push(DriversPageRoute());
                    },
                  ),
                  10.h.horizontalSpace,
                  buildHomeCard(
                    text: 'Utilisateurs',
                    icon: Icons.man,
                    onPressed: () {
                      AutoRouter.of(context).push(UsersPageRoute());
                    },
                  ),
                ],
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  35.h.horizontalSpace,
                  buildHomeCard(
                    text: 'Demandes',
                    icon: Icons.car_rental,
                    onPressed: () {
                      AutoRouter.of(context).push(SubmissionsPageRoute());
                    },
                  ),
                  10.h.horizontalSpace,
                  buildHomeCard(
                    text: 'Messages',
                    icon: Icons.message,
                    onPressed: () {
                      AutoRouter.of(context).push(MessagesPageRoute());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
