import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_task/constant/constant.dart';
import 'package:ui_task/model/single_card_model.dart';

class SingleCardUnit extends StatelessWidget {
  final SingleCardModel model;

  const SingleCardUnit({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 81,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 8.0,
              spreadRadius: 0.1,
              offset: Offset(0.1, 0.2),
              color: shadowColor),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(model.includePadding ? 28.0 : 0.0),
            child: model.isPng
                ? Image.asset(model.leadingPath)
                : SvgPicture.asset(model.leadingPath),
          ),
          SizedBox(
            width: 16,
          ),
          Text(model.title,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          Spacer(),
          model.showSwitch
              ? SvgPicture.asset(model.trailingPath, height: 20, width: 36)
              : Container(),
          SizedBox(
            width: 23,
          )
        ],
      ),
    );
  }
}
