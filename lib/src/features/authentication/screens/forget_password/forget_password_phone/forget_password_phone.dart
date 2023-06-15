import 'package:flutter/material.dart';
import 'package:my_first_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_first_app/src/constants/colors.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(children: [
            SizedBox(
              height: tDefaultSize * 4,
            ),
            FormHeaderWidget(
              image: tForgetPasswordImage,
              title: tForgetPassword,
              subTitle: tForgetPhoneSubTitle,
              heightBetween: 30.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: tFormHeight,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(tPhoneNo),
                      hintText: tPhoneNo,
                      prefixIcon: Icon(Icons.numbers),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child:
                          ElevatedButton(onPressed: () {}, child: Text(tNext))),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
