import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcochin/core/constants/colors.dart';
import 'package:ourcochin/core/constants/text_styles.dart';
import 'package:ourcochin/presentation/registration_screen/controller/registration_screen_controller.dart';
import 'package:provider/provider.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var passwordController = TextEditingController();
    final isVisible = context.watch<RegistrationSCreenController>().isVisible;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTheme.white,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorTheme.white,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0,
              left: size.width * 0.07,
              right: size.width * 0.07,
              child: Image.asset(
                'assets/ourcochinlogo.png',
                height: size.height * 0.15,
              ),
            ),
            Positioned(
              top: size.height * 0.165,
              left: size.width * .09,
              right: size.width * .09,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorTheme.mainColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .08),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: size.height * .02),
                        Text('SIGN UP HERE',
                            style: TextStyles.signupHeadding()),
                        SizedBox(height: size.height * .02),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * .45),
                          child: Text(
                            "Username",
                            style: TextStyles.registarionTexts(),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        TextFormField(
                          //  controller: emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          style: TextStyles.registarionTexts(size: 13),
                          decoration: InputDecoration(
                            fillColor: ColorTheme.white,
                            filled: true,
                            hintText: 'Enter Username',
                            //   hintStyle: GLTextStyles.textformfieldhint(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: size.width * .05),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  color: ColorTheme.white,
                                  width: size.width * .004),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  // color: ColorTheme.secondarycolor,
                                  width: size.width * .004),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * .55),
                          child: Text(
                            "Email",
                            style: TextStyles.registarionTexts(),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        TextFormField(
                          //  controller: emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          style: TextStyles.registarionTexts(size: 13),
                          decoration: InputDecoration(
                            fillColor: ColorTheme.white,
                            filled: true,
                            hintText: 'Enter Your Email',
                            //   hintStyle: GLTextStyles.textformfieldhint(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: size.width * .05),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  color: ColorTheme.white,
                                  width: size.width * .004),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  // color: ColorTheme.secondarycolor,
                                  width: size.width * .004),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * .35),
                          child: Text(
                            "Phone Number",
                            style: TextStyles.registarionTexts(),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        TextFormField(
                          //  controller: emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          style: TextStyles.registarionTexts(size: 13),
                          decoration: InputDecoration(
                            fillColor: ColorTheme.white,
                            filled: true,
                            hintText: 'Enter Your Phone Number',
                            //   hintStyle: GLTextStyles.textformfieldhint(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: size.width * .05),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  color: ColorTheme.white,
                                  width: size.width * .004),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  // color: ColorTheme.secondarycolor,
                                  width: size.width * .004),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * .45),
                          child: Text(
                            "Password",
                            style: TextStyles.registarionTexts(),
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        TextFormField(
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          obscureText: !isVisible,
                          obscuringCharacter: '*',
                          style: TextStyles.registarionTexts(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorTheme.white,
                            hintText: 'Password',
                            // hintStyle: GLTextStyles.textformfieldhint(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: size.width * .05),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  color: ColorTheme.white,
                                  width: size.width * .004),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                  // color: ColorTheme.secondarycolor,
                                  width: size.width * .004),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                context
                                    .read<RegistrationSCreenController>()
                                    .toggleVisibility();
                              },
                              icon: Icon(
                                isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          onFieldSubmitted: (_) {},
                        ),
                        SizedBox(height: size.height * .04),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorTheme.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: double.infinity,
                            height: size.height * 0.052,
                            child: Center(
                              child: Text('Login',
                                  style: GoogleFonts.montserrat(
                                      color: ColorTheme.black, fontSize: 18)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
