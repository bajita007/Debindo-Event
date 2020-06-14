import 'package:debindo_mks/Ui/textStyle.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class TabKategory extends StatefulWidget {
  @override
  _TabKategoryState createState() => _TabKategoryState();
}

class _TabKategoryState extends State<TabKategory>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedTabIndex = 0;
  final List<String> _tabs = [
    "SEMUA",
    "SEMINAR",
    "EXHIBITION",
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            "Kategory Event",
            style: AppTextStyles.HeaderTextBlack,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10),
          child: TabBar(
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            controller: tabController,
            unselectedLabelColor: Colors.grey.withOpacity(0.6),
            isScrollable: true,
            indicator: BoxDecoration(
              color: CustomColors.BlueDark.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12.0),
            ),
            tabs: _tabs.map((tab) {
              var index = _tabs.indexOf(tab);
              return Tab(
                child: Text(
                  tab,
                  style: switchColor(index),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  TextStyle switchColor(index) {
    return selectedTabIndex == index
        ? AppTextStyles.selectedTabTextStyle
        : AppTextStyles.unselectedTabTextStyle;
  }
}
