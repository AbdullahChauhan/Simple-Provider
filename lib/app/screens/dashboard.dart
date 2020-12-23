import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/app/notifier/random_user_notifier.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userInfo = context.watch<RandomUserNotifier>().user;
    print(userInfo);
    final userData = userInfo.results[0];
    return Scaffold(
      body: SafeArea(child: _pageBody(context, userData)),
    );
  }

  Widget _pageBody(BuildContext context, user) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${user.name.title} ${user.name.first} ${user.name.last}')
        ],
      ),
    );
  }
}
