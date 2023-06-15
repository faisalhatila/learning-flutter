import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mobile_friendly_rounded,
            title: tPhoneNo,
            subTitle: tResetViaPhone,
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
