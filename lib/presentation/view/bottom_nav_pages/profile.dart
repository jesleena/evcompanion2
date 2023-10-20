import 'package:evcompanion2/presentation/view/booking_review/booking_review_page.dart';
import 'package:evcompanion2/presentation/view/login_screen.dart';
import 'package:evcompanion2/presentation/view/my_booking/my_booking.dart';
import 'package:evcompanion2/presentation/view/profile/my_booking.dart';
import 'package:evcompanion2/presentation/view/profile/my_favourite.dart';
import 'package:evcompanion2/presentation/view/profile/my_profile.dart';
import 'package:evcompanion2/presentation/view/profile/my_vehicle.dart';
import 'package:evcompanion2/presentation/view/profile/my_vehicle/my_vehicle.dart';
import 'package:evcompanion2/presentation/view/profile/terms_conditions.dart';
import 'package:evcompanion2/presentation/widgets/cardWidget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final pages = [
    myProfile(),
    MyVehicleScreen(),
    MyBookingPage(),
    TermsAndConditionsScreen(),
    LoginScreen(),
  ];
  var iconName = [
    "profile",
    "My Vehicle",
   
    "My Booking",
    "Terms & Conditions",
    "LogOut",
  ];
  static const icons = <IconData>[
    Icons.person,
    Icons.car_rental,
    
    Icons.calendar_today_outlined,
    Icons.security_outlined,
    Icons.logout,
  ];
  late SharedPreferences Preferences;
 String? name;
  @override
  void initState() {
    fetchdata();
    super.initState();
  }
  // to read data from shared preference
  void fetchdata() async{
    Preferences = await SharedPreferences.getInstance();
    setState(() {
      name = Preferences.getString('namekey')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person,size: 70,color: Colors.grey,),
          Text( " $name",),
            SizedBox(height: 40.h),
            Expanded(
                child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: iconName.length,
                  itemBuilder: (context, index) {
                    return CardWidget1(
                      iconName: iconName[index],
                      icons: icons[index],
                      pageName: pages[index],
                    );
                  }),
            )),
          ],
        ),
      ),
    );
  }
}

