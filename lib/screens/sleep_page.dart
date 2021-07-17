import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app_ui/consts/colors.dart';
import 'package:meditation_app_ui/screens/play_option_page.dart';

class SleepPage extends StatelessWidget {
  final List categories = [
    {"image": "all.png", "name": "All", "isSelected": true},
    {"image": "my.png", "name": "My", "isSelected": false},
    {"image": "anxious.png", "name": "Anxious", "isSelected": false},
    {"image": "sleep.png", "name": "Sleep", "isSelected": false},
    {"image": "kids.png", "name": "Kids", "isSelected": false},
  ];

  final List cat = [
    {"name": "Night Island", "image": "image_1.png"},
    {"name": "Sweet Sleep", "image": "image_2.png"},
    {"name": "Night Island", "image": "image_3.png"},
    {"name": "Night Island", "image": "image_4.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/top_image.png",
          height: 255.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            SizedBox(
              height: 66.h,
              width: double.infinity,
            ),
            Text(
              "Sleep Stories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Soothing bedtime stories to help you fall into a deep and natural sleep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 34.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                  height: 92.w,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index) => SizedBox(width: 20),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 65.w,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                color: categories[index]["isSelected"] == true
                                    ? AppColor.blueColor
                                    : Colors.grey,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/" +
                                        categories[index]["image"],
                                    height: 25.h,
                                    width: 25.w,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              categories[index]["name"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        );
                      })),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 233.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/big_image.png"),
                      fit: BoxFit.fill,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The ocean moon",
                      style: TextStyle(
                        color: AppColor.lightYellowColor,
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        "Non-stop 8- hour mixes of our most popular sleep audio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h,
                  childAspectRatio: 177.w / 174.h, // width/height
                ),
                itemCount: cat.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayOption(
                                      title: cat[index]["name"],
                                      image: cat[index]["image"],
                                    )),
                          );
                        },
                        child: Container(
                          height: 122.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/" + cat[index]["image"]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        cat[index]["name"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "45 min . Sleep Music".toUpperCase(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
