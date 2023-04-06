import 'dart:ffi';

class Tasks {
  final String name;
  final bool isdone;

  Tasks({required this.name, this.isdone = true});

  void toogleDone() {
    !isdone;
  }
}
