import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/app/notifier/random_user_notifier.dart';
import 'package:provider_ex/app/screens/dashboard.dart';
import 'package:provider_ex/app/services/api_service.dart';

class Startup extends StatefulWidget {
  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pageBody(context)),
    );
  }

  Widget _pageBody(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                final user = await ApiService().getRandomUser();
                if (user != null) {
                  context.read<RandomUserNotifier>().setUser(user);
                  Navigator.push(context, CupertinoPageRoute(builder: (_) {
                    return Dashboard();
                  }));
                }
              },
              child: Text('Get Random User'))
        ],
      ),
    );
  }
}
