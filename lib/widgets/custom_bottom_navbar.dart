import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app_ui/consts/colors.dart';

class CustomButtomNavBar extends StatefulWidget {
  final Function(int)? onChange;
  const CustomButtomNavBar({Key? key, this.onChange}) : super(key: key);

  @override
  _CustomButtomNavBarState createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backgroundColor,
      height: 112.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildItems("Home", "home.png", 0),
            buildItems("Sleep", "sleep.png", 1),
            buildItems("Meditate", "meditate.png", 2),
            buildItems("Music", "music.png", 3),
            buildItems("Afsar", "afsar.png", 4),
          ],
        ),
      ),
    );
  }

  InkWell buildItems(String? title, String? image, int index) {
    return InkWell(
      onTap: () {
        widget.onChange!(index);
        _selectedIndex = index;
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 46.h,
            width: 46.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: index == _selectedIndex ? AppColor.blueColor : null),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/" + image!,
                  height: 22.h,
                  color: index == _selectedIndex ? Colors.white : Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            title!,
            style: TextStyle(
              fontSize: 14.sp,
              color: index == _selectedIndex ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
