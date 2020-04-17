import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class BottomBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int index;
  List<Map<String, Object>> iconData;
  List<String> titleList;

  BottomBar({
    this.onTap,
    this.index,
    List<IconData> icons,
    this.iconData,
    this.titleList,
  }) {
    this.iconData = icons
        .asMap()
        .map((index, icon) => MapEntry(index, {"index": index, "value": icon}))
        .values
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return bottomBar();
  }

  Widget bottomBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: PRIMARY_COLOR.withOpacity(0.5),
            blurRadius: 6,
          )
        ],
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            onTap: onTap,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            items: iconData.map((icon) => barItem(icon)).toList(),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem barItem(Map<String, Object> iconData) {
    return BottomNavigationBarItem(
      icon: Container(
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.all(7),
        child: Icon(
          iconData['value'],
          size: 24,
          color: PRIMARY_COLOR,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: iconData['index'] == index
              ? PRIMARY_COLOR.withOpacity(0.15)
              : null,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 2.0),
        child: Text(
          titleList[iconData['index']],
          style: TextStyle(
            fontSize: 12,
            color: PRIMARY_COLOR,
          ),
        ),
      ),
    );
  }
}
