import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/messages/ui/message_item.dart';
import 'package:wigootaxiadmin/providers/message_provider.dart';

class MessagesPage extends HookConsumerWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageState = ref.watch(messageProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages/Rapports'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: ListView.builder(
          itemCount: messageState.messages.length,
          itemBuilder: (context, index) {
            return MessageItem(message: messageState.messages[index]);
          },
        ),
      ),
    );
  }
}
