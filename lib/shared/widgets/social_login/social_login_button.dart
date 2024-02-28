import 'package:flutter/material.dart';
import 'package:payflowapp/shared/themes/app_colors.dart';
import 'package:payflowapp/shared/themes/app_images.dart';
import 'package:payflowapp/shared/themes/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(8),
            border:
                const Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    const SizedBox(width: 16),
                    Container(
                      height: 40,
                      width: 1,
                      color: AppColors.stroke,
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Text("Entrar com google",
                    style: TextStyles.buttonGray, textAlign: TextAlign.start),
              ),
            )
          ],
        ),
      ),
    );
  }
}
