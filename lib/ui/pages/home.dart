import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/pages/day_1.dart';
import 'package:flutter_openui/ui/pages/day_2/day_2_1.dart';
import 'package:flutter_openui/ui/pages/day3/day_3_1.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Challenge - 30 Days'),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            physics: const BouncingScrollPhysics(),
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              final availableDays = [0, 1, 2];
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0: Get.to(const Day1Page()); break;
                    case 1: Get.to(const Day2Page1()); break;
                    case 2: Get.to(const Day3Page()); break;
                    default: null;
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: availableDays.contains(index) ? Colors.deepPurple.shade100 : Theme.of(context).disabledColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      width: 1.5,
                      color: availableDays.contains(index) ? Colors.deepPurple : Theme.of(context).disabledColor,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Day',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: availableDays.contains(index) ? Colors.deepPurple : Theme.of(context).disabledColor),
                      ),
                      const Gap(10.0),
                      Text(
                        (index + 1).toString(),
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: availableDays.contains(index) ? Colors.deepPurple : Theme.of(context).disabledColor,
                                ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const Gap(10.0),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Dev-ed by Joel Fah',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).disabledColor),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
