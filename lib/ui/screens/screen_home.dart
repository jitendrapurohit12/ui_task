import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/constant/constant.dart';
import 'package:ui_task/model/bottom_navigation_model.dart';
import 'package:ui_task/model/single_card_model.dart';
import 'package:ui_task/ui/common_widgets/search_bar.dart';
import 'package:ui_task/ui/common_widgets/single_card_unit.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<BottomNavigationModel> bottomNavigationList = List();

  @override
  void initState() {
    super.initState();
    bottomNavigationList.addAll(navigationList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            bicycle,
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 8,
            ),
            Text(
              'Niklas\'s Bike',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          SvgPicture.asset(
            profile,
          ),
          SizedBox(
            width: 18,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Profiler',
                    style: Theme.of(context).textTheme.display1.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 16,
              ),
              SearchBar(),
              SizedBox(
                height: 8,
              ),
              for (int i = 0; i < cardList.length; i++)
                SingleCardUnit(
                  model: cardList[i],
                ),
              SizedBox(
                height: 56,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              for (int i = 0; i < bottomNavigationList.length; i++)
                Expanded(
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () => setState(() {
                      bottomNavigationList
                          .forEach((model) => model.isSelected = false);
                      bottomNavigationList[i].isSelected = true;
                    }),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset(
                            bottomNavigationList[i].imagePath,
                            width: 24,
                            height: 24,
                            color: bottomNavigationList[i].isSelected
                                ? Colors.red
                                : Colors.grey,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            bottomNavigationList[i].title,
                            style: TextStyle(
                                fontSize: 12,
                                color: bottomNavigationList[i].isSelected
                                    ? Colors.red
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

// bottomNavigationBar: BottomNavigationBar(
//         items: navigationList
//             .map(
//               (model) => BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   model.imagePath,
//                   width: 24,
//                   height: 24,
//                   color: model.isSelected ? Colors.red : Colors.grey,
//                 ),
//                 title: Text(
//                   model.title,
//                   style: TextStyle(
//                       color: model.isSelected ? Colors.red : Colors.grey),
//                 ),
//               ),
//             )
//             .toList(),
//         onTap: (i) => setState(() {
//           bottomNavigationList.forEach((model) => model.isSelected = false);
//           bottomNavigationList[i].isSelected = true;
//         }),
//         showUnselectedLabels: true,
//         iconSize: 24,
//       )
