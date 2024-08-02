import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmsScreen extends StatelessWidget {
  const SmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Sms Verification',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.popAndPushNamed(context, '/loginscreen'),
          ),
          backgroundColor: const Color(0xFF1769E9),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.blue[50],
                  child: Icon(Icons.message,
                      color: const Color(0xFF1769E9), size: 40.sp),
                ),
                SizedBox(height: 20.h),
                Text(
                  "We've sent you an OTP to your mobile number\n+9172******24 for verification",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return Container(
                      width: 50.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: TextField(
                          cursorColor: Color(0xFF1769E9),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: '',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 40.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 18.sp),
                      backgroundColor: const Color(0xFF1769E9),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r))),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.w),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40.h,
                      child: Center(
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: "Didn't receive the code?  ",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      TextSpan(
                        text: "Resend",
                        style: const TextStyle(
                            color: Color(0xFF1769E9),
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
