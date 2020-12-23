import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/app/notifier/random_user_notifier.dart';
import 'package:provider_ex/app/screens/startup.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RandomUserNotifier>(
      create: (_) => RandomUserNotifier(),
      child: MaterialApp(
        title: 'Provide Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/startup',
        routes: {'/startup': (context) => Startup()},
      ),
    );
  }
}
