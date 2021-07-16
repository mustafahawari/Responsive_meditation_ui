import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app_ui/screens/homepage.dart';

class WelcomeScreen extends StatelessWidget {
  final String path = "assets/images/";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path + "background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 155.h),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 68.h),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Image.asset(
                path + "birds.png",
                height: 229.h,
                width: double.infinity,
                alignment: Alignment.topRight,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 150.h),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Container(
                  alignment: Alignment.center,
                  height: 63.h,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff8E97FD),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    "Get Started".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
