import 'package:crafty_bay/presentation/state_holders/main_button_nav_controll.dart';
import 'package:crafty_bay/presentation/ui/screens/review_add_screen.dart';
import 'package:crafty_bay/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        Get.find<MainButtonNavControll>().backtohome();
      },
      child: PopScope(
        canPop: false,
        onPopInvoked: (value){
          Get.find<MainButtonNavControll>().backtohome();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Review'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.find<MainButtonNavControll>().backtohome();
              },
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CustomerReview;
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(
                          height: 8,
                        );
                      },
                      itemCount: 4)),
              ReviewSection
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const CreatReviewScreen());
            },
            backgroundColor: AppColors.primaryColor,
            child: const Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ),
    );
  }

  Card get CustomerReview {
    return const Card(
                      // elevation: 2,
                      child: Padding(
                        padding:  EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text('Sazzad Hossen',style: TextStyle(
                                  color: Colors.black45
                                ),),
                              ],
                            ),
                            Text(
                              "I recently purchased a pair of shoes from Shoes brand, "
                              "and I have to say, I'm thoroughly impressed."
                              " Not only are they stylish and trendy, "
                              "but they're also incredibly comfortable to wear.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    );
  }

  Container get ReviewSection {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.15),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      child: const Padding(
        padding: EdgeInsets.all(35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Review(100)',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                ),

              ],
            ),
            // SizedBox(
            //   //  width: 100,
            //     child: ElevatedButton(
            //         onPressed: () {}, child:const Icon(Icons.add)))
          ],
        ),
      ),
    );
  }
}
