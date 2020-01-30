import 'package:ui_task/constant/constant.dart';

class BottomNavigationModel {
  String title, imagePath;
  bool isSelected;

  BottomNavigationModel({this.title, this.imagePath, this.isSelected = false});
}

List<BottomNavigationModel> navigationList = [
  BottomNavigationModel(title: 'Home', imagePath: home),
  BottomNavigationModel(title: 'Profiler', imagePath: profiler),
  BottomNavigationModel(title: 'Entdecken', imagePath: search),
  BottomNavigationModel(title: 'Shop', imagePath: cart)
];
