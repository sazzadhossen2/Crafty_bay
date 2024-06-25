
import 'package:crafty_bay/presentation/ui/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_holders/main_button_nav_controll.dart';

class CreatReviewScreen extends StatefulWidget {
  const CreatReviewScreen({super.key});

  @override
  State<CreatReviewScreen> createState() => _CreatReviewScreenState();
}

class _CreatReviewScreenState extends State<CreatReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Review'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.find<MainButtonNavControll>().backtohome();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
const SizedBox(height: 30,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Fast Name'),
                textInputAction: TextInputAction.next,
              ),
              const   SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Last Name'),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                maxLines: 6,
                decoration: const InputDecoration(hintText: 'Write Review'),
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {

                    Get.to(const ReviewScreen());
                  }, child: const Text("Submit"))),
            ],
          ),
        ),
      ),
    );
  }
}