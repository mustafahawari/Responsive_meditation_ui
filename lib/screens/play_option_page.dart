import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app_ui/consts/colors.dart';

class PlayOption extends StatelessWidget {
  final String title;
  final String image;
  PlayOption({Key? key, required this.title, required this.image})
      : super(key: key);
  final List cat = [
    {"name": "Night Island", "image": "image_1.png"},
    {"name": "Sweet Sleep", "image": "image_2.png"},
    {"name": "Night Island", "image": "image_3.png"},
    {"name": "Night Island", "image": "image_4.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Container(
            height: 290.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 50.h, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildCircularConatiner(Icons.arrow_back, Colors.white),
                  Spacer(),
                  buildCircularConatiner(
                      Icons.favorite, Colors.grey.withOpacity(0.5)),
                  SizedBox(width: 5),
                  buildCircularConatiner(
                      Icons.download, Colors.grey.withOpacity(0.5)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "45 min . Sleep Music".toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Ease the mind into a restful night’s sleep  with these deep, amblent tones.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    Text(
                      "24.234 Favorits",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(width: 49.w),
                    Icon(Icons.favorite, color: Colors.white),
                    Text(
                      "24.234 Favorits",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Divider(thickness: 2, color: Colors.grey),
                ),
                Text(
                  "Related",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          Container(
            height: 174.h,
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
                    Container(
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
          ),
          SizedBox(height: 20.h),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: 63.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(38.r),
            ),
            child: Text("Play",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ],
      ),
    );
  }

  Container buildCircularConatiner(IconData icon, Color color) {
    return Container(
      height: 55.h,
      width: 55.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(icon),
    );
  }
}
