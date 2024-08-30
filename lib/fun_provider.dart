import 'package:flutter/material.dart';

class FunProvider extends ChangeNotifier {
  Color changeColor = Colors.black;
  List<Color> colorList = [
    Colors.green,
    Colors.white,
    Colors.blue,
    Colors.brown,
    Colors.pink,
    Colors.black
  ];
  int currentIndex = 0;
  void changecolor() {
    //   final _random = new Random();
    //  changeColor = colorList[ _random.nextInt(colorList.length)];
    // _random.nextInt(list.length)]
    for (var i = 0; i < colorList.length; i++) {
      if (currentIndex == i) {
        changeColor = colorList[i];
        currentIndex = (currentIndex + 1) % colorList.length;
        notifyListeners();
        break;
      }
    }
  }

  bool size = true;
  void changesize() {
    size = !size;
    notifyListeners();
  }
}
