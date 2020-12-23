import 'package:flutter/foundation.dart';
import 'package:provider_ex/app/models/RandomUser.dart';

class RandomUserNotifier extends ChangeNotifier {
  RandomUser _user;

  // getting the user
  RandomUser get user => _user;

  // set the user and listening to it, so that if any change may occur like new_user, emptying the user data by passing null
  void setUser(RandomUser user) {
    _user = user;
    notifyListeners();
  }
}
