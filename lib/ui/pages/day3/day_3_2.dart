import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/components/helper.dart';
import 'package:flutter_openui/ui/pages/day3/day_3_3.dart';
import 'package:flutter_openui/ui/pages/home.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconoir_flutter/regular/bicycle.dart';
import 'package:iconoir_flutter/regular/gym.dart';
import 'package:iconoir_flutter/regular/running.dart';
import 'package:iconoir_flutter/regular/swimming.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:remix_flutter/remix_flutter.dart';

class Day3Page2 extends StatelessWidget {
  const Day3Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Day3Component.secondaryColor,
      appBar: AppBar(
        backgroundColor: Day3Component.secondaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Get.offAll(const HomePage());
          },
          icon: const Icon(RemixIcon.menu_4_line, color: Colors.white,),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.to(const Day3Page3()),
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Day3Component.lightColor,
                  borderRadius: BorderRadius.circular(6.0),
                  image: DecorationImage(
                    image: NetworkImage(jfImage)
                  )
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20.0),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(
            'Today'.toUpperCase(),
            style: Day3Component.textStyle,
            textAlign: TextAlign.center,
          ),
          const Gap(30.0),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Diary'.toUpperCase(),
              style: Day3Component.textStyle,
            ),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TitleCard(title: 'Breakfast', calValue: '270 cal',),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ListCard(
              title: 'Strawberries - Raw',
              subtitle: '1 cup, halves',
              trailingText: '50',
            ),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ListCard(
              title: '1 Scramble Egg White',
              subtitle: '1 eggs white',
              trailingText: '20',
            ),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ListCard(
              title: 'Honey',
              subtitle: '100 gm',
              trailingText: '200',
            ),
          ),
          const Gap(30.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TitleCard(title: 'Lunch', calValue: '120 cal',),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ListCard(
              title: '100 % Apple Juice',
              subtitle: '200 ml',
              trailingText: '120',
            ),
          ),
          const Gap(30.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            decoration: BoxDecoration(
              color: Day3Component.lightColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
                boxShadow: [BoxShadow(
                    offset: const Offset(0, 14.0),
                    blurRadius: 50.0,
                    color: const Color(0xFF2E3B59).withOpacity(0.5)
                )],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Popular exercises'.toUpperCase(),
                      style: Day3Component.textStyle,
                    ),
                    const Spacer(),
                    Text(
                      'All'.toUpperCase(),
                      style: Day3Component.textStyle.copyWith(color: Day3Component.primaryColor, fontSize: 10.0),
                    ),
                  ],
                ),
                const Gap(30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(25.0),
                              decoration: BoxDecoration(
                                color: Day3Component.iconColor.withOpacity(0.2),
                                shape: BoxShape.circle
                              ),
                                child: const Running(width: 30.0, color: Day3Component.iconColor,)
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 13.0,
                              child: Text(
                                '2',
                                style: Day3Component.textStyle.copyWith(color: Day3Component.secondaryColor),
                              ),
                            )
                          ],
                        ),
                        const Gap(10.0),
                        Text(
                          'Running'.toUpperCase(),
                          style: Day3Component.textStyle.copyWith(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(25.0),
                            decoration: BoxDecoration(
                                color: Day3Component.iconColor.withOpacity(0.2),
                                shape: BoxShape.circle
                            ),
                            child: const Swimming(width: 30.0, color: Day3Component.iconColor,)
                        ),
                        const Gap(10.0),
                        Text(
                          'Swimming'.toUpperCase(),
                          style: Day3Component.textStyle.copyWith(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(25.0),
                            decoration: BoxDecoration(
                                color: Day3Component.iconColor.withOpacity(0.2),
                                shape: BoxShape.circle
                            ),
                            child: const Gym(width: 30.0, color: Day3Component.iconColor,)
                        ),
                        const Gap(10.0),
                        Text(
                          'Gym'.toUpperCase(),
                          style: Day3Component.textStyle.copyWith(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(25.0),
                            decoration: const BoxDecoration(
                                color: Day3Component.primaryColor,
                                shape: BoxShape.circle
                            ),
                            child: const Bicycle(width: 30.0, color: Day3Component.secondaryColor,)
                        ),
                        const Gap(10.0),
                        Text(
                          'Cycling'.toUpperCase(),
                          style: Day3Component.textStyle.copyWith(color: Day3Component.primaryColor, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    super.key, required this.title, required this.subtitle, required this.trailingText,
  });
  final String title, subtitle, trailingText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Day3Component.primaryColor,
            radius: 5,
          ),
          const Gap(10.0),
          Expanded(
            child: Text(
              title.toUpperCase(),
              style: Day3Component.textStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal,),
            ),
          ),
        ],
      ),
      subtitle: Text(subtitle, style: Day3Component.textStyle.copyWith(color: Day3Component.lightColor),),
      trailing: Text(
        trailingText,
        style: Day3Component.textStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.normal,),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key, required this.title, required this.calValue,
  });
  final String title, calValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Day3Component.lightColor,
        borderRadius: Day3Component.borderRadius,
        boxShadow: [BoxShadow(
          offset: const Offset(0, 14.0),
          blurRadius: 50.0,
          color: const Color(0xFF2E3B59).withOpacity(0.5)
        )]
      ),
      child: Row(
        children: [
          Text(
            title.toUpperCase(),
            style: Day3Component.textStyle,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                calValue.toUpperCase(),
                style: Day3Component.textStyle.copyWith(color: Day3Component.primaryColor),
              ),
              const Gap(20.0),
              const Icon(LucideIcons.wrench, color: Day3Component.iconColor,)
            ],
          )
        ],
      ),
    );
  }
}
