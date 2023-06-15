import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({
    Key? key,
    required this.image,
    required this.socialMediaButtonText,
    required this.accountQuesText,
    required this.accountActionText,
  }) : super(key: key);

  final String image, socialMediaButtonText, accountQuesText, accountActionText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Or"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(
              image: AssetImage(image),
              width: 20.0,
            ),
            onPressed: () {},
            label: Text(socialMediaButtonText),
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(
          child: Text.rich(
            TextSpan(
              text: accountQuesText,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                  text: accountActionText,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
