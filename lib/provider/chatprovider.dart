import 'package:flutter/widgets.dart';
import 'package:todome/models/chatdata.dart';

class chat with ChangeNotifier {
  List<Chats> _chatt = [
    Chats("J", "Jamie", "How are u doing", 2),
    Chats("A", "Jamie", "How are u doing", 2),
    Chats("S", "Sokoto", "How are u doing", 2),
    Chats("Q", "Quabutey", "whats ur age", 2),
    Chats("B", "Bingo", "whats ur age", 2),
    Chats("V", "Vingo", "whats ur age", 2),
  ];

  List<Chats> get meschat {
    return [..._chatt];
  }

  void addChat(String user, String message) {
    final chaat = Chats(user.substring(0, 1), user, message, 10);
    meschat.add(chaat);
    notifyListeners();
  }
}
