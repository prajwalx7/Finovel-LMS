import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationTrackingScreen extends StatefulWidget {
  const ApplicationTrackingScreen({super.key});

  @override
  ApplicationTrackingScreenState createState() =>
      ApplicationTrackingScreenState();
}

class ApplicationTrackingScreenState extends State<ApplicationTrackingScreen> {
  int _currentStep = 0;
  final bool _isApproved = true; // Set this as per needs

  List<Step> _getSteps() {
    return [
      Step(
        title: _buildStepTitle(
          'Application received',
          _currentStep >= 0,
        ),
        subtitle: _buildStepSubtitle(
          _currentStep >= 0 ? '11 Apr | 01:27 PM' : '',
        ),
        content: const Text(
          'Your documents have been received & will be picked up for verification in about 24 hrs.',
        ),
        isActive: _currentStep >= 0,
        state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: _buildStepTitle(
          'Application under Verification',
          _currentStep >= 1,
        ),
        subtitle: _buildStepSubtitle(
          _currentStep >= 1 ? '12 Apr | 10:15 AM' : '',
        ),
        content: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Verification process is ongoing.'),
        ),
        isActive: _currentStep >= 1,
        state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: _buildStepTitle(
          'Application Status',
          _currentStep >= 2,
        ),
        subtitle: _buildStepSubtitle(
          _currentStep >= 2 ? '13 Apr | 03:45 PM' : '',
        ),
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text(_isApproved
              ? 'Your application has been approved.'
              : 'Your application has been rejected.'),
        ),
        isActive: _currentStep >= 2,
        state: _currentStep > 2 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: _buildStepTitle(
          'Auto Debit Registration | e-sign',
          _currentStep >= 3 && _isApproved,
        ),
        subtitle: _buildStepSubtitle(
          _currentStep >= 3 && _isApproved ? '14 Apr | 11:30 AM' : '',
        ),
        content: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Register for auto debit and complete e-sign.'),
        ),
        isActive: _currentStep >= 3 && _isApproved,
        state: _currentStep > 3 && _isApproved
            ? StepState.complete
            : StepState.disabled,
      ),
      Step(
        title: _buildStepTitle(
          'Loan Transfer',
          _currentStep >= 4 && _isApproved,
        ),
        subtitle: _buildStepSubtitle(
          _currentStep >= 4 && _isApproved ? '15 Apr | 02:00 PM' : '',
        ),
        content: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Loan amount will be transferred to your account.'),
        ),
        isActive: _currentStep >= 4 && _isApproved,
        state: _currentStep >= 4 && _isApproved
            ? StepState.complete
            : StepState.disabled,
      ),
    ];
  }

  Widget _customStepIconBuilder(int index, StepState state) {
    final Color backgroundColor = index == _currentStep
        ? Colors.green
        : (index < _currentStep ? Colors.green : Colors.grey);
    const Color iconColor = Colors.white;

    final double size = 30.r;

    Widget buildIcon(IconData iconData) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor, // Set background color
        ),
        child: Center(
          child: Icon(
            iconData,
            size: size * 0.6, // Adjust size of the icon
            color: iconColor,
          ),
        ),
      );
    }

    switch (index) {
      case 0:
        return buildIcon(Icons.receipt_long_rounded); // Step 1
      case 1:
        return buildIcon(Icons.content_paste_search); // Step 2
      case 2:
        return buildIcon(
            _isApproved ? Icons.verified_rounded : Icons.cancel); // If approved
      case 3:
        return buildIcon(Icons.document_scanner); // 4th step after approved
      case 4:
        return buildIcon(Icons.currency_rupee); // 5th step after approval
      default:
        return buildIcon(Icons.help_outline); // Default icon
    }
  }

  Widget _buildStepTitle(String title, bool isActive) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.h),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.black : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildStepSubtitle(String subtitle) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        subtitle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                context, '/maindashscreen'),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.0.w),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: 15.r,
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
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/imgs/notification.png",
                                height: 40.h,
                                width: 40.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        'Loan Application Tracker',
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
            SizedBox(height: 20.h),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -30.h),
                child: Stepper(
                  connectorColor: WidgetStatePropertyAll(Colors.green.shade500),
                  currentStep: _currentStep,
                  onStepTapped: (step) {
                    if (step <= 2 || (_isApproved && step <= 4)) {
                      setState(() => _currentStep = step);
                    }
                  },
                  onStepContinue: null,
                  onStepCancel: null,
                  steps: _getSteps(),
                  stepIconBuilder: _customStepIconBuilder,
                  controlsBuilder:
                      (BuildContext context, ControlsDetails details) {
                    return Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
