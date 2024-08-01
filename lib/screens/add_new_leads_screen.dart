import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AddNewLeadsScreen extends StatefulWidget {
  const AddNewLeadsScreen({super.key});

  @override
  State<AddNewLeadsScreen> createState() => _AddNewLeadsScreenState();
}

class _AddNewLeadsScreenState extends State<AddNewLeadsScreen> {
  bool _isCheckedPrivacy = false;
  bool _isCheckedNotify = false;
  String? selectedRequirement;
  String? selectedIncomeSource;
  String? selectedLeadType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0.w, vertical: 8.0.h),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.popAndPushNamed(
                                  context, '/referralscreen'),
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
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0.w),
                        child: Row(
                          children: [
                            Text(
                              'Add New Lead Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(8.r),
                                child: Icon(
                                  Icons.share,
                                  size: 25.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "FILL-UP THE LEAD DETAILS",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20.h),
                  textField("Full Name", "Full Name"),
                  SizedBox(height: 20.h),
                  textField("Mobile Number", "Mobile Number"),
                  SizedBox(height: 20.h),
                  textField("Email ID", "Email ID"),
                  SizedBox(height: 20.h),
                  textField("Pancard Number", "Pancard Number"),
                  SizedBox(height: 20.h),
                  textField("Aadhar Number", "Aadhar Number"),
                  SizedBox(height: 20.h),
                  textField("Area Pincode", "Area Pincode"),
                  SizedBox(height: 20.h),
                  dropdownField(
                    labelText: "Select Type of Requirements",
                    hintText: "Select Type of Requirements",
                    items: [
                      'Personal Loan',
                      'Home Loan',
                      'Business Loan',
                      'Gold Loan',
                      'Vehicle Loan',
                      'Credit Card',
                      'Loan Against Property',
                      'Other Loan',
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedRequirement = newValue;
                      });
                    },
                    value: selectedRequirement,
                  ),
                  SizedBox(height: 20.h),
                  textField("Monthly in Hand Income", "Monthly in Hand Income"),
                  SizedBox(height: 20.h),
                  dropdownField(
                    labelText: "Source of Income",
                    value: selectedLeadType,
                    hintText: "Source of Income",
                    items: ['Salaries', 'Self-Employed', 'Unemployed'],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLeadType = newValue;
                      });
                    },
                  ),
                  SizedBox(height: 20.h),
                  textField("Required Loan Amount", "Required Loan Amount"),
                  SizedBox(height: 20.h),
                  dropdownField(
                    labelText: "Type of Lead",
                    value: selectedIncomeSource,
                    hintText: "Type of Lead",
                    items: ['Hot Lead', 'Warm Lead', 'Cold Lead'],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedIncomeSource = newValue;
                      });
                    },
                  ),
                  SizedBox(height: 70.h),
                  textField("Add Referral Code", "Add Referral Code"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isCheckedPrivacy,
                        onChanged: (bool? value) {
                          setState(() {
                            _isCheckedPrivacy = value ?? false;
                          });
                        },
                        fillColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.blue;
                          }
                          return Colors.white;
                        }),
                        checkColor: Colors.white,
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'I have read the ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              TextSpan(
                                text: 'Privacy Policy, Terms & Condition.',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isCheckedNotify,
                        onChanged: (bool? value) {
                          setState(() {
                            _isCheckedNotify = value ?? false;
                          });
                        },
                        fillColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.blue;
                          }
                          return Colors.white;
                        }),
                        checkColor: Colors.white,
                      ),
                      const Expanded(
                        child: Text(
                          'I Agree to customer can get Call & Notification on SMS, Email for next Application Process.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: ElevatedButton(
                      onPressed: () {
                        _showSubmissionDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 18),
                          backgroundColor: const Color(0xFF1769E9),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r))),
                      child: Padding(
                        padding: EdgeInsets.all(12.0.r),
                        child: SizedBox(
                          width: double.infinity,
                          height: 30.h,
                          child: Center(
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget textField(String hintText, String labelText) {
  return TextFormField(
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black),
      contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      hintText: hintText,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.blue)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade400)),
    ),
  );
}

Widget dropdownField({
  required String? value,
  required String hintText,
  required List<String> items,
  required void Function(String?) onChanged,
  required String labelText,
}) {
  return DropdownButtonHideUnderline(
    child: DropdownButton2<String>(
      isExpanded: true,
      hint: Row(
        children: [
          Expanded(
            child: Text(
              hintText,
            ),
          ),
        ],
      ),
      items: items
          .map((String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                ),
              ))
          .toList(),
      value: value,
      onChanged: onChanged,
      buttonStyleData: ButtonStyleData(
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      iconStyleData: IconStyleData(
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
        ),
        iconSize: 28.sp,
      ),
      dropdownStyleData: DropdownStyleData(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        maxHeight: 500.h,
        width: 385.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        height: 40.h,
        padding: EdgeInsets.only(left: 10.w, right: 25.w),
      ),
    ),
  );
}

void _showSubmissionDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 250.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Your Lead has been\n",
                      style: TextStyle(fontSize: 18.sp, height: 1.5),
                    ),
                    TextSpan(
                      text: "Submitted Successfully\n",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          height: 1.5),
                    ),
                    TextSpan(
                      text: "Sit back and Relax\n",
                      style: TextStyle(fontSize: 18.sp, height: 1.5),
                    ),
                    TextSpan(
                      text: "Our associate will get in touch",
                      style: TextStyle(
                          fontSize: 18.sp, color: Colors.grey, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Lottie.asset("assets/animation/thanks.json",
                    height: 200, width: 200),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/mysalesdashboard');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1769E9),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
                ),
                child: Text("Done", style: TextStyle(fontSize: 18.sp)),
              ),
            ],
          ),
        ),
      );
    },
  );
}
