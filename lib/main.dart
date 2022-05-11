import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wigootaxiadmin/core/ui/app_widget.dart';
import 'package:wigootaxiadmin/firebase_options.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
