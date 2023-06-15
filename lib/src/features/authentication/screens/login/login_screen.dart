import 'package:flutter/material.dart';
import 'package:my_first_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';
import 'package:my_first_app/src/features/authentication/screens/login/widgets/login_form_widget.dart';

import '../../../../common_widgets/form/form_footer_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle),
              LoginForm(),
              FormFooterWidget(
                  image: tGoogleLogoImage,
                  socialMediaButtonText: tSignInWithGoogle,
                  accountQuesText: tDontHaveAnAccount,
                  accountActionText: tSignup),
            ],
          ),
        ),
      ),
    );
  }
}
