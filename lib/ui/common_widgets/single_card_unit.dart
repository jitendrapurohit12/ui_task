import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_task/model/single_card_model.dart';

class SingleCardUnit extends StatelessWidget {
  final SingleCardModel model;

  const SingleCardUnit({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Card(
        elevation: 6,
        child: Container(
          height: 80,
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
                  style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Spacer(),
              model.showSwitch
                  ? SvgPicture.asset(model.trailingPath, height: 24, width: 24)
                  : Container(),
              SizedBox(
                width: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
