import 'package:crafty_bay/data/model/creat_profile_perams.dart';
import 'package:crafty_bay/presentation/state_holders/verify_otp_controlller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holders/creart_profile_controller.dart';
import '../../widgets/app_logo.dart';
import '../main_button_nav_button.dart';

class Compeletprofile extends StatefulWidget {
  const Compeletprofile({super.key});

  @override
  State<Compeletprofile> createState() => _CompeletprofileState();
}

class _CompeletprofileState extends State<Compeletprofile> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _adress = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _postCode = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _fax = TextEditingController();
  final TextEditingController _sname = TextEditingController();
  final TextEditingController _sadress = TextEditingController();
  final TextEditingController _scity = TextEditingController();
  final TextEditingController _sstate = TextEditingController();
  final TextEditingController _spostCode = TextEditingController();
  final TextEditingController _scountry = TextEditingController();
  final TextEditingController _sphone = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 48,
                ),
                const Applogo(
                  height: 80,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Get Started with us with your details',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(hintText: 'Name'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _adress,
                  decoration: const InputDecoration(hintText: 'Address'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _city,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(hintText: 'City'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _state,
                  decoration: const InputDecoration(hintText: 'State'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _postCode,
                  decoration: const InputDecoration(hintText: 'Post Code'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _country,
                  decoration: const InputDecoration(hintText: 'Country'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _phone,
                  decoration: const InputDecoration(hintText: 'Phone'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _fax,
                  decoration: const InputDecoration(hintText: 'Fax'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _sname,
                  decoration: const InputDecoration(hintText: 'S Name'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _sadress,
                  decoration: const InputDecoration(hintText: 'S Address'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _scity,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(hintText: 'S City'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _sstate,
                  decoration: const InputDecoration(hintText: 'S State'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _spostCode,
                  decoration: const InputDecoration(hintText: 'S Post Code'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _scountry,
                  decoration: const InputDecoration(hintText: 'S Country'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _sphone,
                  decoration: const InputDecoration(hintText: 'S Phone'),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 24,
                ),
                GetBuilder<CreatprofileControlller>(builder: (Controller) {
                  return SizedBox(
                      width: double.infinity,
                      child: Visibility(
                        visible: Controller.inProgress == false,
                        replacement: const Center(child: CircularProgressIndicator()),
                        child: ElevatedButton(
                            onPressed: () async {
                              final bool result = await Controller.CreatProfile(
                                  Get.find<VerifyOtpControlller>().token,
                                  CreatProfilePerams(
                                      _name.text.toString(),
                                      _adress.text.toString(),
                                      _city.text.toString(),
                                      _state.text.toString(),
                                      _postCode.text.toString(),
                                      _country.text.toString(),
                                      _phone.text.toString(),
                                      _fax.text.toString(),
                                      _sname.text.toString(),
                                      _sadress.text.toString(),
                                      _scity.text.toString(),
                                      _sstate.text.toString(),
                                      _spostCode.text.toString(),
                                      _scountry.text.toString(),
                                      _sphone.text.toString()));
                              if (result) {
                                Get.to(const MainButtonNavButton());
                              } else {
                                Get.showSnackbar(GetSnackBar(
                                  title: 'Something Wrong',
                                  message: Controller.isError,
                                ));
                              }
                            },
                            child: const Text("Next")),
                      ));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
