import 'package:flutter/material.dart';
import 'package:my_first_app/src/common_widgets/form/form_footer_widget.dart';
import 'package:my_first_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_first_app/src/constants/colors.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';
import 'package:my_first_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle),
              SignUpFormWidget(),
              FormFooterWidget(
                  image: tGoogleLogoImage,
                  socialMediaButtonText: tSignUpWithGoogle,
                  accountQuesText: tAlreadyHaveAnAccount,
                  accountActionText: tLogin),
            ],
          ),
        ),
      ),
    );
  }
}
