import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                    ),
                    child: Image.asset(
                      'assets/imgs/header_bg1.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 150.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      left: 20.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.popAndPushNamed(
                                  context, '/mysalesdashboard'),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.0.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      size: 15.sp,
                                      color: Colors.white,
                                    ),
                                    const Text(
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
                        Text(
                          'Customer Support Center',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hey Sangram!",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "we are here to help.",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Lottie.asset("assets/animation/support.json",
                        height: 200.h, width: 300.w, fit: BoxFit.fill),
                    Text(
                      "Get in touch",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "We are always within your reach",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Call us for immediate support",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "022-69711979",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xFF1769E9),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "We're available from:",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                  Text(
                                    "Mon to Sat (09:30 am to 06:30 pm)",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Lottie.asset("assets/animation/call.json",
                                height: 40.h, width: 40.w),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/location.svg",
                            height: 20.h, width: 20.w),
                        SizedBox(width: 5.w),
                        Text(
                          "Registered Office",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0.w),
                      child: const Text(
                        "Flat No F 1302, Tanish Pearls Airport Road, Charholi, Pune, Maharashtra. - 412105",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/whatsapp.svg",
                            height: 30.h, width: 30.w),
                        SizedBox(width: 8.w),
                        Text(
                          'Chat with us',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/live.svg",
                            height: 30.h, width: 30.w),
                        SizedBox(width: 8.w),
                        Text(
                          'Live Support',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/mail.svg",
                            height: 30.h, width: 30.w),
                        SizedBox(width: 8.w),
                        Text(
                          'Write an email to us',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(color: Colors.grey),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
