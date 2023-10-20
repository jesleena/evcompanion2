import 'package:flutter/material.dart';
import 'package:evcompanion2/presentation/view/registration_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottom_nav_controller.dart';
import 'package:evcompanion2/presentation/widgets/mytextfield.dart';
import 'package:evcompanion2/presentation/widgets/customButtom.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final uname_ctrl = TextEditingController();
  final passwd_ctrl = TextEditingController();
  bool _obscureText = true;
  late SharedPreferences Preferences;


  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
//title:
//Center(child: Text( "login", )),
       ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
             // Image.asset('assets/icon1.png',  height: 100, width: 100, ),
              Text( "Log in",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40), ),
              Text( "Please enter the details below to continue" ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                myTextField("Email address","Email address",TextInputType.text,uname_ctrl, ),
                  ),


              Padding(
                padding: const EdgeInsets.all(12.0),
                child:
               // myTextField("enter your name",TextInputType.text,passwd_ctrl ),
                TextField(
                 // style: ItemNameStyle,
                  controller: passwd_ctrl,
                  obscureText: _obscureText,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "password must be 6 character",
                   // hintStyle: textHintStyle,
                    labelText: 'Password',
                    //labelStyle:  textStyle3,
                    suffixIcon: _obscureText == true
                        ? IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = false;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                        ))
                        : IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = true;
                          });
                        },
                        icon: Icon(
                          Icons.visibility_off,

                        )),
                  ),
                ),),
              customButton("Login",()=>validateandLogin()),


              TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute
                (builder: (context)=>RegistrationPage()));}, child: Text( "Don't you have an account? SignUp"),)

            ],
          ),
        ),
      ),
    );
  }




  void validateandLogin() async {
    Preferences = await SharedPreferences.getInstance();
    String storedusername = Preferences.getString('unamekey')!;
    String storedpassword = Preferences.getString('passkey')!;
    // values that we entered at text field
    String username = uname_ctrl.text.trim();
    String password = passwd_ctrl.text.trim();

    if (storedusername == username && storedpassword == password) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BottomNavController()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username or password",),backgroundColor: Colors.red,));
    }
  }
}
