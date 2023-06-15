import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_first_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:my_first_app/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            tForgetPasswordTitle,
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            tForgetPasswordSubTitle,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: 30,
          ),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mail_outline_rounded,
            title: tEmail,
            subTitle: tResetViaEmail,
            onTap: () {
              Navigator.pop(context);
              Get.to(() => ForgetPasswordMailScreen());
            },
          ),
          SizedBox(
            height: 20,
          ),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mobile_friendly_rounded,
            title: tPhoneNo,
            subTitle: tResetViaPhone,
            onTap: () {
              Navigator.pop(context);
              Get.to(() => ForgetPasswordPhoneScreen());
            },
          ),
        ]),
      ),
    );
  }
}
