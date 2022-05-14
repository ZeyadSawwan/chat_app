import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

class HomeBloc {
  TextEditingController searchController = TextEditingController();
  List<User> userlist = [
    User(1, 5, "Hello", "Marwan", isPinned: true),
    User(1, 0, "Hello", "Raya", isPinned: true),
    User(1, 0, "Hello", "Naser"),
    User(1, 0, "Hello", "Majd"),
    User(1, 0, "Hello", "Omar"),
  ];
}
