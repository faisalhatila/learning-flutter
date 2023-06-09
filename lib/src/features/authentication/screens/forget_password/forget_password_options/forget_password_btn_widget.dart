import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.grey.shade900
              : Colors.grey.shade200,
        ),
        child: Row(children: [
          Icon(
            // Icons.mail_outline_rounded,
            btnIcon,
            size: 60.0,
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // tEmail,
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                // tResetViaEmail,
                subTitle,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
