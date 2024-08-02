import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF1769E9),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 18.0.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.r),
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(6.r)),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/logo.png"),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sangram Patil",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        const Text("India"),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                        icon: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.0.w, vertical: 1.0.h),
                          child: Icon(
                            Icons.edit,
                            size: 12.sp,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(50.w, 30.h),
                            backgroundColor: const Color(0xFF1769E9),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r))),
                        onPressed: () {},
                        label: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.0.w, vertical: 1.0.h),
                          child: const Text("Edit Profile"),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
