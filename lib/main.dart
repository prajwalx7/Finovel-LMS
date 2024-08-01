import 'package:app/screens/add_new_leads_screen.dart';
import 'package:app/screens/all_partners_screen.dart';
import 'package:app/screens/application_tracking_screen.dart';
import 'package:app/screens/channel_partner_dashboard.dart';
import 'package:app/screens/dashboard_screen.dart';
import 'package:app/screens/earning_from_channel_partner.dart';
import 'package:app/screens/earnings_from_partners_screen.dart';
import 'package:app/screens/faqq_screen.dart';
import 'package:app/screens/filter_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/main_dashboard.dart';
import 'package:app/screens/my_all_revenue_screen.dart';
import 'package:app/screens/my_sales_dashboard_screen.dart';
import 'package:app/screens/my_sales_earnings_dash.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/reference_details_screen.dart';
import 'package:app/screens/referral_program_screen.dart';
import 'package:app/screens/referral_steps.dart';
import 'package:app/screens/revenue_screen.dart';
import 'package:app/screens/sms_screen.dart';
import 'package:app/screens/support_screen.dart';
import 'package:app/screens/terms_conditions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/profile',
          routes: {
            '/referralscreen': (context) => const ReferralProgramScreen(),
            '/referralsteps': (context) => const ReferralSteps(),
            '/tncscreen': (context) => const TermsAndConditionsScreen(),
            '/dashboardscreen': (context) => const DashboardScreen(),
            '/mysalesdashboard': (context) => const MySalesDashboardScreen(),
            '/leadsscreen': (context) => const AddNewLeadsScreen(),
            '/filterscreen': (context) => const FilterScreen(),
            '/revenuescreen': (context) => const RevenueScreen(),
            '/maindashscreen': (context) => const MainDashboard(),
            '/applicationtrackingscreen': (context) =>
                const ApplicationTrackingScreen(),
            '/referencedetails': (context) => const ReferenceDetailsScreen(),
            '/supportscreen': (context) => const SupportScreen(),
            '/channelscreen': (context) =>
                const ChannelPartnerDashboardScreen(),
            '/allpartners': (context) => const AllPartnersScreen(),
            '/earningfrompartners': (context) =>
                const EarningsFromPartnersScreen(),
            '/faqscreen': (context) => FAQScreen(),
            '/myallrevenue': (context) => const MyAllRevenueScreen(),
            '/mysalesearningdashboard': (context) =>
                const MySalesEarningDashboardScreen(),
            '/earningfromchannelpartner': (context) =>
                const EarningfromChannelPartner(),
            '/loginscreen': (context) => const LoginScreen(),
            '/smsscreen': (context) => const SmsScreen(),
            '/profile': (context) => const ProfileScreen(),
          },
        );
      },
    );
  }
}
