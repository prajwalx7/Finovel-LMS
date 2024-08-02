import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80.h),
                CircleAvatar(
                    radius: 60.r,
                    backgroundColor: Colors.blue[50],
                    child: Image.asset("assets/images/logo.png")),
                SizedBox(height: 25.h),
                Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Happy to see you again, please login here',
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(height: 50.h),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1769E9)),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {},
                ),
                SizedBox(height: 30.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/smsscreen');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: const Color(0xFF1769E9),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r))),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
                SizedBox(height: 20.h),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.fingerprint,
                    color: Color(0xFF1769E9),
                  ),
                  label: Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: const Text(
                      'Login with Fingerprint',
                      style: TextStyle(color: Color(0xFF1769E9)),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                  ),
                ),
                SizedBox(height: 25.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '* By login I Agree with all the ',
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    children: [
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                            color: const Color(0xFF1769E9), fontSize: 14.sp),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
