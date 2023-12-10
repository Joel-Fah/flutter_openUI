import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../components/helper.dart';
import 'day_2_1.dart';

class Day2Page3 extends StatefulWidget {
  const Day2Page3({super.key});

  @override
  State<Day2Page3> createState() => _Day2Page3State();
}

class _Day2Page3State extends State<Day2Page3> {
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  bool _isHidden = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).focusedChild?.unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Day2Component.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              right: -50,
              child: Container(
                alignment: Alignment.centerRight,
                height: deviceHeight(context) / 1.5,
                width: deviceWidth(context),
                child: Image.asset(
                  Day2Component.d2BgImage,
                  fit: BoxFit.contain,
                  height: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: deviceHeight(context) / 6,
                    ),
                    const TitleText(
                      title: 'Log in',
                    ),
                    const Gap(20.0),
                    Container(
                      width: deviceWidth(context),
                      decoration: const BoxDecoration(),
                      clipBehavior: Clip.antiAlias,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            // color: Colors.white.withOpacity(.1),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(.1),
                                Colors.white.withOpacity(.1)
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/69576717?v=4'
                                  ),
                                  radius: 30,
                                ),
                                title: Text('Joël FAH', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0),),
                                subtitle: Text('joelfah2003@gmail.com', style: TextStyle(color: Colors.white.withOpacity(0.5),),),
                              ),
                              const Gap(16.0),
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    AnimatedContainer(
                                      duration: const Duration(microseconds: 800),
                                      curve: Curves.ease,
                                      decoration: BoxDecoration(
                                          color: !_isFocused ? Day2Component.secondaryColor : Colors.white,
                                          border: Border.all(
                                            color: _isFocused ? Day2Component.primaryColor : Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(12.0)),
                                      child: Focus(
                                        onFocusChange: (hasFocus) {
                                          setState(() {
                                            _isFocused = hasFocus;
                                          });
                                        },
                                        child: TextFormField(
                                          controller: passwordController,
                                          obscureText: _isHidden,
                                          focusNode: _focusNode,
                                          keyboardType: TextInputType.visiblePassword,
                                          style: const TextStyle(fontWeight: FontWeight.w600),
                                          decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            contentPadding:
                                            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                            label: Text(
                                              'Password',
                                              style: TextStyle(color: Colors.grey.shade500),
                                            ),
                                            hintText: 'Password',
                                            hintStyle: const TextStyle(
                                                color: Colors.grey, fontWeight: FontWeight.normal),
                                            suffix: InkWell(
                                              borderRadius: BorderRadius.circular(20.0),
                                              highlightColor: Day2Component.primaryColor.withOpacity(0.1),
                                              onTap: () {
                                                setState(() {
                                                  _isHidden = !_isHidden;
                                                });
                                              },
                                              child: Text(_isHidden ? 'View' : 'Hide', style: const TextStyle(color: Colors.black),),
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(10.0),
                                    const DefaultElevatedButton(buttonText: 'Continue'),
                                    const Gap(8.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Day2Component
                                              .primaryColor
                                              .withOpacity(0.1),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Forgot your password?',
                                          style: TextStyle(
                                              color: Day2Component.primaryColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}