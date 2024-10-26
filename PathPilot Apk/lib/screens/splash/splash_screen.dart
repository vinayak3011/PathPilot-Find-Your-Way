import 'package:flutter/material.dart';
import 'package:pathpilot/screens/sign_in/login.dart';

import '../../constants.dart';
import '../sign_in/sign_in_screen.dart';
import 'components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splashscreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to pathpilot, Let’s Go!",
      "image": "assets/images/icon1-2.png"
    },
    {
      "text": "We help people connect with Campus \naround the University",
      "image": "assets/images/icon2.png"
    },
    {
      "text": "We show the efficient way to you Destination. \nJust go with the Flow",
      "image": "assets/images/icon3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => AnimatedContainer(
                            duration: kAnimationDuration,
                            margin: const EdgeInsets.only(right: 5),
                            height: 6,
                            width: currentPage == index ? 20 : 6,
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? kPrimaryColor
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                        child: const Text("Continue"),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
