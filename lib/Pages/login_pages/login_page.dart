import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:one_work/Pages/login_pages/forget_password.dart';

import '../../Component/custom_textfromfiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Jobseek',
                  style: TextStyle(color: Color(0xff0E9D57), fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Welcome Back 👋',
                  style: TextStyle(color: Color(0xff0D0D26), fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Let’s Register. Apply to jobs!',
                  style: TextStyle(color: Color(0xff0D0D26)),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: CustomTextFrom(
                  hintext: '',
                  label: 'E-mail',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: CustomTextFrom(
                  hintext: '',
                  label: 'Password',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xff0E9D57),
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              30.verticalSpace,
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ForgetPassword()));
                  },
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      color: Color(0xff0E9D57),
                    ),
                  )),
              30.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 98,
                      child: Divider(
                        thickness: 2,
                        height: 50,
                      )),
                  16.horizontalSpace,
                  Text(
                    'Or continue with',
                    style: TextStyle(color: Color(0xffBDBEC2)),
                  ),
                  16.horizontalSpace,
                  SizedBox(
                      width: 98,
                      child: Divider(
                        thickness: 2,
                        height: 50,
                      )),
                ],
              ),

              24.verticalSpace,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Logo(Logos.apple)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Logo(Logos.facebook_logo)),
                    ),
                  ),
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Logo(Logos.google)),
                  ),
                ],
              ),
              24.verticalSpace,
              SizedBox(
                width: 350,
                height: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Have an account? ',
                          style: TextStyle(color: Color(0xffBDBEC2)),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Register',
                                style: TextStyle(color: Color(0xff0E9D57))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
