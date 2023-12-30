import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/components/helper.dart';
import 'package:flutter_openui/ui/pages/day_2/day_2_2.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'day_2_3.dart';

class Day2Page1 extends StatefulWidget {
  const Day2Page1({super.key});

  @override
  State<Day2Page1> createState() => _Day2Page1State();
}

class _Day2Page1State extends State<Day2Page1> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

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
                      title: 'Hi!',
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
                          child: Form(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                DefaultTextFormField(
                                  label: 'Email',
                                  hintText: 'Email',
                                  controller: emailController,
                                  focusNode: _focusNode,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Email is required';
                                    }

                                    if (!Day2Component.isValidEmail(value)) {
                                      return 'Invalid email';
                                    }
                                    return null;
                                  },
                                ),
                                const Gap(16.0),
                                DefaultElevatedButton(buttonText: 'Continue', onPressed: () => Get.to(const Day2Page3()),),
                                const Gap(10.0),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Gap(10.0),
                                const SocialAuthButton(
                                  image:
                                      'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
                                  text: 'Continue with Facebook',
                                ),
                                const Gap(10.0),
                                const SocialAuthButton(
                                  image:
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
                                  text: 'Continue with Google',
                                ),
                                const Gap(10.0),
                                const SocialAuthButton(
                                  image:
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png',
                                  text: 'Continue with Apple',
                                ),
                                // const Gap(16.0),
                                Row(
                                  children: [
                                    const Text(
                                      'Don\'t have an account?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.to(const Day2Page2());
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Day2Component
                                            .primaryColor
                                            .withOpacity(0.1),
                                      ),
                                      child: const Text(
                                        'Sign up',
                                        style: TextStyle(
                                            color: Day2Component.primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
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
                          ),
                        ),
                      ),
                    ),
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

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    super.key, required this.buttonText, this.onPressed,
  });
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Day2Component.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15.0)),
          padding: const EdgeInsets.symmetric(
              vertical: 18.0),
        ),
        onPressed: onPressed ?? (){},
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DefaultTextFormField extends StatefulWidget {
  const DefaultTextFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.controller,
      required this.focusNode, this.validator});

  final String label, hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? Function(String?)? validator;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  bool _isFocused = false;

  @override
  void dispose() {
    // Dispose the FocusNode when no longer needed
    widget.focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
          controller: widget.controller,
          focusNode: widget.focusNode,
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
            label: Text(
              widget.label,
              style: TextStyle(color: Colors.grey.shade500),
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.normal),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none
          ),
          validator: widget.validator,
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 30.0,
            ),
      ),
    );
  }
}

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFe4f9f2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image.network(
              image,
              width: 30.0,
              height: 30.0,
            ),
            const Gap(16.0),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
