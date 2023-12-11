import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../components/helper.dart';
import 'day_2_1.dart';

class Day2Page2 extends StatefulWidget {
  const Day2Page2({super.key});

  @override
  State<Day2Page2> createState() => _Day2Page2State();
}

class _Day2Page2State extends State<Day2Page2> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final FocusNode _focusNodeName = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();

  bool _isHidden = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).focusedChild?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      title: 'Sign up',
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
                              Text.rich(
                                TextSpan(
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 16.0),
                                    children: const [
                                      TextSpan(
                                          text:
                                              'Looks like you don\'t have an account. Let\'s create a new account for\n'),
                                      TextSpan(
                                          text: 'joelfah2003@gmail.com',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600))
                                    ]),
                              ),
                              const Gap(16.0),
                              DefaultTextFormField(
                                label: 'Name',
                                hintText: 'Name',
                                controller: nameController,
                                focusNode: _focusNodeName,
                              ),
                              const Gap(16.0),
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    AnimatedContainer(
                                      duration:
                                          const Duration(microseconds: 800),
                                      curve: Curves.ease,
                                      decoration: BoxDecoration(
                                          color: !_isFocused
                                              ? Day2Component.secondaryColor
                                              : Colors.white,
                                          border: Border.all(
                                            color: _isFocused
                                                ? Day2Component.primaryColor
                                                : Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      child: Focus(
                                        onFocusChange: (hasFocus) {
                                          setState(() {
                                            _isFocused = hasFocus;
                                          });
                                        },
                                        child: TextFormField(
                                          controller: passwordController,
                                          obscureText: _isHidden,
                                          focusNode: _focusNodePassword,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600),
                                          decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0,
                                                    vertical: 10.0),
                                            label: Text(
                                              'Password',
                                              style: TextStyle(
                                                  color: Colors.grey.shade500),
                                            ),
                                            hintText: 'Password',
                                            hintStyle: const TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal),
                                            suffix: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              highlightColor: Day2Component
                                                  .primaryColor
                                                  .withOpacity(0.1),
                                              onTap: () {
                                                setState(() {
                                                  _isHidden = !_isHidden;
                                                });
                                              },
                                              child: Text(
                                                _isHidden ? 'View' : 'Hide',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(16.0),
                                    const Text.rich(
                                      TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0),
                                          children: [
                                            TextSpan(
                                                text:
                                                'By selecting Agree nd continue below, I agree to '),
                                            TextSpan(
                                                text: 'Terms of Service and Privacy Policy',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600, color: Day2Component.primaryColor,))
                                          ]),
                                    ),
                                    const Gap(16.0),
                                    const DefaultElevatedButton(buttonText: 'Agree and continue')
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
