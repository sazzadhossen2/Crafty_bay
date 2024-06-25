
import 'package:crafty_bay/presentation/ui/screens/Auth/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holders/send_otp_email_controller.dart';
import '../../widgets/app_logo.dart';

class Verifyemailscreen extends StatefulWidget {
  const Verifyemailscreen({super.key});

  @override
  State<Verifyemailscreen> createState() => _VerifyemailscreenState();
}

class _VerifyemailscreenState extends State<Verifyemailscreen> {
  final TextEditingController _email=TextEditingController();
  final GlobalKey<FormState>_Formkey=GlobalKey<FormState>();
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
                  height: 160,
                ),
                const Applogo(
                  height: 80,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'WellCome Back',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'please enter your address',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(hintText: 'Email',

                  ),
                  validator: (value){
                    if(value!.isEmpty==true){
                      return 'Enter your Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                GetBuilder<SendOtpEmailController>(
                  builder:(controller){ return SizedBox(
                    width: double.infinity,
                      child: Visibility(
                        visible: controller.inProgress==false,
                        replacement: const Center(child: CircularProgressIndicator()),
                        child: ElevatedButton(onPressed: () async{
                          if(_Formkey.currentState!.validate()){
                           final bool result=await controller.SendEmail(_email.text.trim());
                           if(result){
                             Get.to(VerifyOtpScreen(email:_email.text.trim()));
                           }else{
                             Get.showSnackbar(GetSnackBar(
                               title: "error",
                               message: controller.anError,
                               duration: const Duration(seconds: 2),
                               isDismissible: true,
                             ));
                           }

                          }


                        }, child: const Text("Next")),
                      ));}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
