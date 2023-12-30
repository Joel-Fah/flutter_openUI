import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:remix_flutter/remix_flutter.dart';

import '../../components/helper.dart';
import '../home.dart';

class Day3Page3 extends StatelessWidget {
  const Day3Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
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
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20.0),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(
            'Dashboard'.toUpperCase(),
            style: Day3Component.lightTextStyle,
            textAlign: TextAlign.center,
          ),
          const Gap(20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Day3Component.borderRadius,
                boxShadow: [BoxShadow(
                    offset: const Offset(0, 24.0),
                    blurRadius: 50.0,
                    color: const Color(0xFFE8E5E2).withOpacity(0.5)
                )],
              ),
              child: Column(
                        children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '512'.toUpperCase(),
                            style: Day3Component.textStyle.copyWith(color: Day3Component.primaryColor, fontSize: 34.0),
                          ),
                          const Icon(RemixIcon.information_fill, color: Day3Component.secondaryColor, size: 30.0,)
                        ],
                      ),
                      const Gap(20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Calories\nremaining',
                        style: Day3Component.lightTextStyle,
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          '+ Add to Diary',
                          style: Day3Component.textStyle.copyWith(color: Day3Component.primaryColor,),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0 + 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: ListCardLight(title: '567', subtitle: 'Goal',)),
                    Expanded(child: ListCardLight(title: '+1 112', subtitle: 'Food',)),
                  ],
                ),
                Gap(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: ListCardLight(title: '-123', subtitle: 'Exercise',)),
                    Expanded(child: ListCardLight(title: '784', subtitle: 'Net',)),
                  ],
                ),
              ],
            )
          ),
          const Gap(30.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            decoration: const BoxDecoration(
              color: Color(0xFFEDEDED),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            ),
            child: Column(
              children: [
                Text(
                  'My profile'.toUpperCase(),
                  style: Day3Component.lightTextStyle.copyWith(color: Day3Component.lightColor.withOpacity(0.5)),
                  textAlign: TextAlign.center,
                ),
                const Gap(20.0),
                ListTile(
                  title: Text('Shop Fitness Gear',
                  style: Day3Component.lightTextStyle.copyWith(fontSize: 13.0)),
                  trailing: Icon(LucideIcons.chevronRight, color: Day3Component.lightColor.withOpacity(0.5),),
                ),
                ListTile(
                  title: Text('Goals',
                  style: Day3Component.lightTextStyle.copyWith(fontSize: 13.0)),
                  trailing: Icon(LucideIcons.chevronRight, color: Day3Component.lightColor.withOpacity(0.5),),
                ),
                ListTile(
                  title: Text('Nutrition',
                  style: Day3Component.lightTextStyle.copyWith(fontSize: 13.0)),
                  trailing: Icon(LucideIcons.chevronRight, color: Day3Component.lightColor.withOpacity(0.5),),
                ),
                ListTile(
                  title: Text('Meals, Recipes & Foods',
                  style: Day3Component.lightTextStyle.copyWith(fontSize: 13.0)),
                  trailing: Icon(LucideIcons.chevronRight, color: Day3Component.lightColor.withOpacity(0.5),),
                ),
                ListTile(
                  title: Text('Apps & Devices',
                  style: Day3Component.lightTextStyle.copyWith(fontSize: 13.0)),
                  trailing: Icon(LucideIcons.chevronRight, color: Day3Component.lightColor.withOpacity(0.5),),
                ),
                const Gap(20.0),
                SizedBox(
                  width: deviceWidth(context),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Day3Component.secondaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: Day3Component.borderRadius
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Log out'.toUpperCase(),
                      style: Day3Component.textStyle
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListCardLight extends StatelessWidget {
  const ListCardLight({
    super.key, required this.title, required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title.toUpperCase(),
        style: Day3Component.textStyle.copyWith(fontWeight: FontWeight.normal, color: Day3Component.secondaryColor, fontSize: 24.0,),
      ),
      subtitle: Text(subtitle, style: Day3Component.textStyle.copyWith(color: Day3Component.lightColor.withOpacity(0.5)),),
    );
  }
}