import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/constant/constant.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 8.0,
              spreadRadius: 0.1,
              offset: Offset(0.1, 0.2),
              color: shadowColor),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Suche',
                  hintStyle: TextStyle(color: Color(0xFFB6B6B6), fontSize: 12)),
            ),
          ),
          SvgPicture.asset(
            search,
            height: 24,
            width: 24,
          )
        ],
      ),
    );
  }
}
