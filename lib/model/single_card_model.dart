import 'package:ui_task/constant/constant.dart';

class SingleCardModel {
  String leadingPath, trailingPath, title;
  bool showSwitch, isEnabled, includePadding, isPng;

  SingleCardModel(
      {this.leadingPath,
      this.trailingPath,
      this.title,
      this.showSwitch = true,
      this.isEnabled = false,
      this.includePadding = false,
      this.isPng = false});
}

List cardList = [
  SingleCardModel(
      leadingPath: add,
      title: 'Neues Profil erstelen',
      showSwitch: false,
      includePadding: true),
  SingleCardModel(
      leadingPath: image2,
      trailingPath: enabledSwitch,
      title: 'Jan Ullrich Profil',
      isEnabled: true,
      isPng: true),
  SingleCardModel(
      leadingPath: image3,
      trailingPath: disabledSwitch,
      title: 'Fur Arbeitsweg'),
  SingleCardModel(
      leadingPath: image4,
      trailingPath: disabledSwitch,
      title: 'Danny Hart Profil',
      isPng: true),
  SingleCardModel(
      leadingPath: image5, trailingPath: disabledSwitch, title: 'Shuttle'),
  SingleCardModel(
      leadingPath: image3,
      trailingPath: disabledSwitch,
      title: 'Fur Arbeitsweg'),
  SingleCardModel(
      leadingPath: image7,
      title: 'Zurucksetzen',
      showSwitch: false,
      includePadding: true)
];
