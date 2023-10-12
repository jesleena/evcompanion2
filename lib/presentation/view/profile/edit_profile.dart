import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:evcompanion2/presentation/widgets/mytextfield.dart';
import 'package:evcompanion2/presentation/widgets/customButtom.dart';
import 'package:evcompanion2/presentation/view/bottom_nav_controller.dart';
class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late SharedPreferences Preferences;
   TextEditingController name_ctrl=TextEditingController();
   TextEditingController uname_ctrl=TextEditingController();
   TextEditingController phone_ctrl=TextEditingController();
  void initState() {
    fetchData();
    super.initState();
  }
  void fetchData() async {
    Preferences = await SharedPreferences.getInstance()!;
    String? tname = Preferences.getString('namekey')!;
    String? tuname = Preferences.getString('unamekey')!;
    String? tphone = Preferences.getString('phonekey')!;
    setState(() {
      name_ctrl = TextEditingController(text: tname);
      uname_ctrl = TextEditingController(text: tuname);
       phone_ctrl = TextEditingController(text: tphone);

    });


  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Image.asset('assets/icon1.png',  height: 100, width: 100, ),
              Text( "My Profile",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40), ),
              Icon(Icons.person,size: 70,color: Colors.grey,),

              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:
                  myTextField("Full name","Full name",TextInputType.text,name_ctrl)
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: myTextField("Email address","Email address",TextInputType.text,uname_ctrl)
              ),

              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: myTextField("Phone number","Phone number",TextInputType.number,phone_ctrl)
              ),


              customButton("update",()=>storedata()),

              // style: const ButtonStyle(
              // backgroundColor: MaterialStatePropertyAll<Color>(Colors.brown),
              // ),



            ],
          ),
        ),
      ),
    );
  }
  void storedata() async {
    String? personname = name_ctrl.text;
    String? username = uname_ctrl.text;
    String? phone = phone_ctrl.text;

    Preferences = await SharedPreferences.getInstance()!;
    Preferences.setString('namekey', personname);
    Preferences.setString('unamekey', username);
    Preferences.setString('phonekey', phone);
    Navigator.of(context).push(MaterialPageRoute
      (builder: (context)=>BottomNavController()));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Center(child: Text("updated",)),backgroundColor: Colors.green,elevation: 20,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(30),));


  }
}



/*
 ElevatedButton(

                onPressed: () => storedata(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(150,4,150,4),
                  child: Text("Sign up"),
                )
 */