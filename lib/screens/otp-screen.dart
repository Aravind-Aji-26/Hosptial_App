import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  final String? mobileNumber;
  static const routeName = '/otp-screen';
  const OtpScreen({Key? key, this.mobileNumber}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  OtpScreen _args() {
    final args =
    ModalRoute.of(context)!.settings.arguments as OtpScreen;
    return args;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0,right: 30,left: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "OTP Verify",
                style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/Wavy_Gen-01_Single-07.jpg',height: MediaQuery.of(context).size.height * 0.5,width: MediaQuery.of(context).size.width * 0.7,fit: BoxFit.contain,),
              const Text(
                "OTP Send to",
                style: TextStyle(fontSize: 18, color: Colors.black26,fontWeight: FontWeight.w500),
              ),
              Text(
                "+91 ${_args().mobileNumber}",
                style: const TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40,),
              OTPTextField(
                width: MediaQuery.of(context).size.width,
                fieldStyle: FieldStyle.box,
                  fieldWidth: 80,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Colors.white30,
                ),
                ),
              const SizedBox(height: 35,),
              GestureDetector(
                onTap: () {
                  var snackBar = const SnackBar(content: Text('Your details has been submitted'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent,
                  ),
                  child: const Center(child: Text('Verify OTP',style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),)),
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                "By Signing up, you agree with our Terms and Conditions",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black38,fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
