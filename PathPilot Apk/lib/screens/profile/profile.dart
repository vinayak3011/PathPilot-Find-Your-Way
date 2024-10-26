import 'package:flutter/material.dart';
import 'package:pathpilot/JsonModels/users.dart';
import 'package:pathpilot/components/button.dart';
import 'package:pathpilot/components/colours.dart';
import 'package:pathpilot/screens/sign_in/login.dart';

class Profile extends StatelessWidget {
  static String routeName = "/user_profile";


  final Users profile;
  const Profile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45.0,horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: 77,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/no_user.jpg"),
                      radius: 75,
                    ),
                  ),

                  const SizedBox(height: 10),
                  Text(profile.fullName??"",style: const TextStyle(fontSize: 28,color: primaryColor),),
                  Text(profile.email??"",style: const TextStyle(fontSize: 17,color: Colors.grey),),

                  Button(label: "Edit Profile", press: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  }),

                  ListTile(
                    leading: const Icon(Icons.person,size: 30),
                    subtitle: const Text("Full name"),
                    title: Text(profile.fullName??""),
                  ),

                  ListTile(
                    leading: const Icon(Icons.email,size: 30),
                    subtitle: const Text("Email"),
                    title: Text(profile.email??""),
                  ),

                  ListTile(
                    leading: const Icon(Icons.account_circle,size: 30),
                    subtitle: Text(profile.usrName),
                    title: const Text("admin"),
                  ),

                ],
              ),
            )),
      ),
    );
  }
}