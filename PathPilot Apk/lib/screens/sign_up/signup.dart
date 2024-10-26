import 'package:flutter/material.dart';
import 'package:pathpilot/JsonModels/users.dart';
import 'package:pathpilot/SQLite/database_helper.dart';
import 'package:pathpilot/components/button.dart';
import 'package:pathpilot/components/textfield.dart';
import 'package:pathpilot/screens/sign_in/login.dart';

class SignupScreen2 extends StatefulWidget {
  static String routeName = "/signn_up";
  const SignupScreen2({super.key});

  @override
  State<SignupScreen2> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen2> {

  //Controllers
  final fullName = TextEditingController();
  final email = TextEditingController();
  final usrName = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final db = DatabaseHelper();
  signUp()async{
    var res = await db.createUser(Users(fullName: fullName.text,email: email.text,usrName: usrName.text, password: password.text));
    if(res>0){
      if(!mounted)return;
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text("Register New Account",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                ),

                const SizedBox(height: 50),
                InputField(hint: "Full name", icon: Icons.person, controller: fullName),
                InputField(hint: "Email", icon: Icons.email, controller: email),
                InputField(hint: "Username", icon: Icons.account_circle, controller: usrName),
                InputField(hint: "Password", icon: Icons.lock, controller: password,passwordInvisible: true),
                InputField(hint: "Re-enter password", icon: Icons.lock, controller: confirmPassword,passwordInvisible: true),

                const SizedBox(height: 10),
                Button(label: "SIGN UP", press: (){
                  signUp();
                }),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: const Text("LOGIN"))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}