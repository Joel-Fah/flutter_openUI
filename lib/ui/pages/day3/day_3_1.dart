import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/components/helper.dart';
import 'package:flutter_openui/ui/pages/day3/day_3_2.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconoir_flutter/regular/facebook.dart';
import 'package:iconoir_flutter/regular/facebook_tag.dart';

class Day3Page extends StatelessWidget {
  const Day3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Day3Component.primaryColor,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                Get.off(const Day3Page2(), transition: Transition.fade,);
              },
              child: Text(
                'Skip'.toUpperCase(),
                style: Day3Component.textStyle.copyWith(fontSize: 10.0),
              ),
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: deviceHeight(context) / 1.2,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(Day3Component.d3BgImage),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Container(
              height: deviceWidth(context) * .35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Day3Component.primaryColor.withOpacity(0.5),
                  Day3Component.primaryColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    Text(
                      'Fitness App'.toUpperCase(),
                      style: Day3Component.textStyle,
                    ),
                    const Spacer(flex: 7,),
                    SizedBox(
                      width: deviceWidth(context),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                        borderRadius: Day3Component.borderRadius
                      ),
                        ),
                        onPressed: (){
                          Get.off(const Day3Page2(), transition: Transition.fade,);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sign up with Facebook'.toUpperCase(),
                              style: Day3Component.textStyle,
                            ),
                            const Gap(10),
                            const FacebookTag(
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Gap(20.0),
                    SizedBox(
                      width: deviceWidth(context),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 28.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: Day3Component.borderRadius
                          ),
                        ),
                        onPressed: () {
                          Get.off(const Day3Page2(), transition: Transition.fade,);
                        },
                        child: Text(
                          'Sign up with email'.toUpperCase(),
                          style: Day3Component.textStyle
                              .copyWith(color: Day3Component.primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
