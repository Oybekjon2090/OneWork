import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Component/custom_textfromfiled.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          24.verticalSpace,

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
          34.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Color(0xff0D0D26), fontSize: 24),
            ),
          ),
          34.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 23,right: 23),
            child: Text(
              'Enter your email or phone number, we will send you verification code',
              style: TextStyle(color: Color(0xff0D0D26)),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: CustomTextFrom(
              hintext: '',
              label: 'E-mail',
            ),
          ),
         34.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
        ],
      ),
    );
  }
}
