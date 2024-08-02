import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();

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
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 18.0.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.r),
                height: 80.h,
                width: double.infinity,
                color: Colors.white,
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
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text("India"),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                      icon: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.0.w,
                          vertical: 1.0.h,
                        ),
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
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      onPressed: () {},
                      label: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.0.w,
                          vertical: 1.0.h,
                        ),
                        child: const Text("Edit Profile"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.all(10.0.r),
                color: Colors.white,
                child: Column(
                  children: [
                    buildContainer(
                        Icons.person, "Username", _usernameController),
                    const Divider(color: Colors.grey),
                    buildContainer(Icons.phone, "Phone No.", _phoneController),
                    const Divider(color: Colors.grey),
                    buildContainer(Icons.email, "Email", _emailController),
                    const Divider(color: Colors.grey),
                    buildContainer(
                        Icons.location_city, "City", _cityController),
                    const Divider(color: Colors.grey),
                    buildContainer(Icons.map, "State", _stateController),
                    const Divider(color: Colors.grey),
                    buildContainer(Icons.flag, "Country", _countryController),
                    const Divider(color: Colors.grey),
                    buildContainer(
                        Icons.location_pin, "Pin Code", _pinCodeController),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
    IconData icon,
    String title,
    TextEditingController controller,
  ) {
    return Container(
      padding: EdgeInsets.all(12.0.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF1769E9)),
          SizedBox(width: 20.0.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(height: 5.0.h),
                SizedBox(
                  height: 20.0.h,
                  child: TextField(
                    cursorColor: const Color(0xFF1769E9),
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter $title',
                      hintStyle: const TextStyle(color: Colors.grey),
                      isDense: true,
                    ),
                    style: TextStyle(fontSize: 16.0.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
