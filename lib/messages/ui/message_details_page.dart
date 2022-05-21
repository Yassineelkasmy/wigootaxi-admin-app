import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/messages/domain/message.dart';
import 'package:wigootaxiadmin/routes/router.gr.dart';
import 'package:wigootaxiadmin/theme/spacings.dart';

class MessageDetailsPage extends StatelessWidget {
  const MessageDetailsPage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(message.subject)),
      body: Padding(
        padding: kPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h.verticalSpace,
              Text(
                'Email : ',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.h.verticalSpace,
              Text(
                message.email,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              20.h.verticalSpace,
              Text(
                'Téléphone :',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.h.verticalSpace,
              Text(
                message.phone,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              20.h.verticalSpace,
              Text(
                'Sujet:',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.h.verticalSpace,
              Text(
                message.subject,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              20.h.verticalSpace,
              Text(
                'Message:',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.h.verticalSpace,
              Text(
                message.text,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              20.h.verticalSpace,
              Text(
                'Date:',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.h.verticalSpace,
              Text(
                DateFormat('yyyy-MM-dd hh:mm').format(message.ts),
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              20.h.verticalSpace,
              if (message.attachment != '')
                Text(
                  'Image:',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              5.h.verticalSpace,
              if (message.attachment != '')
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      AutoRouter.of(context).push(
                        DocumentImagePageRoute(
                            image: message.attachment,
                            title: 'Image du rapport'),
                      );
                    },
                    icon: const Icon(Icons.image),
                    label: const Text('Voir l`image'),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
