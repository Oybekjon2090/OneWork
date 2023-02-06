import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:one_work/Pages/login_pages/login_page.dart';

import '../../Component/custom_textfromfiled.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                onPressed: () {},
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
                  'Registration 👍',
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
                  label: 'Full Name',
                ),
              ),
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
                child: CustomTextFrom(
                  hintext: '',
                  label: 'Confirm Password',
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
                  child: Center(child: Text('Register',style: TextStyle(color: Colors.white),)),
                ),
              ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Logo(Logos.apple)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Logo(Logos.google)),
                    ),
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
                ],
              ),
              24.verticalSpace,
              InkWell(
                 onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                child: SizedBox(
                  width: 350,
                  height: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Have an account? ',
                          style: TextStyle(color: Color(0xffBDBEC2)),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Log in',
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
