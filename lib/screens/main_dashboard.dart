import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

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
                        SizedBox(
                          height: 25.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16.0.w),
                          child: Row(
                            children: [
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/filterscreen');
                                  },
                                  icon: SvgPicture.asset(
                                      "assets/images/filter.svg"),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0.w, vertical: 18.0.h),
                    child: TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: 'Lead ID, Name, Mobile Number',
                        hintStyle: const TextStyle(color: Colors.black45),
                        suffixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8.r)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0.h, vertical: 12.0.w),
                      ),
                    ),
                  ),
                  buildData("Sanjay Kumar Yadav", "9876543210", "654321",
                      "Personal Loan", "4,50,000/-", "Loan Disbursed", () {
                    Navigator.pushNamed(context, '/applicationtrackingscreen');
                  }),
                  buildData("Jaydeep Kaur", "4876543210", "250221", "Home Loan",
                      "54,50,000/-", "Approved", () {
                    Navigator.pushNamed(context, '/applicationtrackingscreen');
                  }),
                  buildData(
                      "Mangesh Kadam",
                      "3876543210",
                      "254621",
                      "Business Loan",
                      "10,00,000/-",
                      "Incomplete Documents", () {
                    Navigator.pushNamed(context, '/applicationtrackingscreen');
                  }),
                  buildData("Amir Khan", "2876543210", "454271", "Credit Card",
                      "1,50,000/-", "Rejected", () {
                    Navigator.pushNamed(context, '/applicationtrackingscreen');
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildData(String name, String number, String leadId, String product,
    String loanAmount, String leadStatus, VoidCallback onTap) {
  return Padding(
    padding: EdgeInsets.all(14.0.r),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(8.r)),
        padding: EdgeInsets.all(8.0.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 180.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    paddedText('Customer Name:'),
                    paddedText('Mobile Number:'),
                    paddedText('Lead Id:'),
                    paddedText('Product:'),
                    paddedText('Loan Amount:'),
                    paddedText('Lead Status:'),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paddedText(name),
                  paddedText(number),
                  paddedText(leadId),
                  paddedText(product),
                  paddedText(loanAmount),
                  paddedText(leadStatus),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget paddedText(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0.h),
    child: Text(
      text,
      style: TextStyle(fontSize: 16.sp, color: Colors.black87),
    ),
  );
}
