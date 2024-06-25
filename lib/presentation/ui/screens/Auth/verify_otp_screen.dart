import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../state_holders/verify_otp_controlller.dart';
import '../../utility/app_colors.dart';
import '../../widgets/app_logo.dart';
import '../main_button_nav_button.dart';
import 'compelet_profile.dart';

class VerifyOtpScreen extends StatefulWidget {
  VerifyOtpScreen({super.key, required this.email});

  String email;

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController _otpText = TextEditingController();
  final GlobalKey<FormState> _Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _Formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Applogo(
                  height: 80,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Enter OTP Code',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'a 4 digit OTP code has been sent',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  controller: _otpText,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.transparent,
                      inactiveFillColor: Colors.transparent,
                      inactiveColor: AppColors.primaryColor,
                      selectedFillColor: Colors.transparent,
                      selectedColor: Colors.purple),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  appContext: context,
                  validator: (value) {
                    if (value!.isEmpty == true) {
                      return 'Enter Valid otp';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                GetBuilder<VerifyOtpControlller>(
                  builder: (controller) {
                    return SizedBox(
                        width: double.infinity,
                        child: Visibility(
                          visible: controller.inProgress==false,
                          replacement: const Center(child: CircularProgressIndicator()),
                          child: ElevatedButton(
                              onPressed: () async {
                                if (_Formkey.currentState!.validate()) {
                                  final bool result = await controller.otpScreen(
                                      widget.email, _otpText.text.toString());
                                  if (result) {
                                    if(controller.NavigateCompleteScreen){
                                      Get.to(const Compeletprofile());
                                    }else{
                                      Get.offAll(const MainButtonNavButton());
                                    }

                                  } else {
                                    Get.showSnackbar(GetSnackBar(
                                      title: "something Wrong",
                                      message: controller.isError,
                                    ));
                                  }
                                }
                              },
                              child: const Text("Next")),
                        ));
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.grey),
                        children: [
                      TextSpan(text: 'This code will Expired '),
                      TextSpan(
                          text: ' 120s',
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600))
                    ])),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Code',
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
