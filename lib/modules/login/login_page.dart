import 'package:flutter/material.dart';
import 'package:payflowapp/shared/themes/app_colors.dart';
import 'package:payflowapp/shared/themes/app_images.dart';
import 'package:payflowapp/shared/themes/app_text_style.dart';
import 'package:payflowapp/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                  width: size.width,
                  height: size.height * 0.3,
                  color: AppColors.primary),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 40,
                  child: Image.asset(
                    AppImages.person,
                    height: 273,
                    width: 208,
                  )),
              Positioned(
                  bottom: size.height * 0.25,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.logomini,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 70, right: 70, top: 30),
                        child: Text(
                          "Organize seus boletos em um só lugar",
                          style: TextStyles.titleHome,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                        child: SocialLoginButton(
                          onTap: () {
                            print("Clicou");
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
