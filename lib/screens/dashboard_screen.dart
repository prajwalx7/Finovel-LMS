import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/imgs/header_bg1.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 190.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 42.h,
                      left: 20.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.popAndPushNamed(
                                  context, '/referralscreen'),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.0.w),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'BACK',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(8.r),
                                child: Image.asset(
                                  "assets/imgs/notification.png",
                                  height: 40.h,
                                  width: 40.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        const Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Column(
                  children: [
                    salesDashboardContainer(context, "My Sales Dashboard", () {
                      Navigator.pushNamed(context, '/mysalesdashboard');
                    }),
                    SizedBox(height: 30.h),
                    salesDashboardContainer(
                        context, "Channel Partners Dashboard", () {
                      Navigator.pushNamed(context, '/channelscreen');
                    }),
                    SizedBox(height: 30.h),
                    salesDashboardContainer(context, "My All Revenue", () {
                      Navigator.pushNamed(context, '/revenuescreen');
                    }),
                  ],
                ),
              ),
              Lottie.asset(
                "assets/animation/sharee.json",
                height: 300.h,
                width: double.infinity,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Lottie.asset(
              "assets/animation/icon.json",
              height: 150.h,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

Widget salesDashboardContainer(
    BuildContext context, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade700,
            ),
          ],
        ),
      ),
    ),
  );
}
