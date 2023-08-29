import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app-assets.dart';
import 'package:food_order_pos/globals/app_colors.dart';
import 'package:food_order_pos/globals/app_font_style.dart';
import 'package:food_order_pos/globals/constants.dart';
import 'package:food_order_pos/view/about_me.dart';
import 'package:food_order_pos/view/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: FadeInDown(
          duration: Duration(milliseconds: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CAKIE',
                style: AppTextStyle.headerInfoTextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(250, 128, 114, 0.8),
              Color.fromRGBO(255, 192, 203, 0.8)
            ])),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: size.height * 0.05,
            // left: size.height * 0.1,
            // right: size.height * 0.1,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 2000),
                        child: Text(
                          'HEY SUGAR!',
                          style: AppTextStyle.headerInfoTextStyle(),
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInLeft(
                        duration: Duration(milliseconds: 2300),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Wellcom to Cakie!',
                                textStyle:
                                    AppTextStyle.infoTextStyle(fontSize: 25))
                          ],
                          pause: const Duration(milliseconds: 2500),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInLeft(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText("Let's enjoy the cake!",
                                textStyle:
                                    AppTextStyle.infoTextStyle(fontSize: 25)),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInLeft(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Fell the sweetness!',
                                textStyle:
                                    AppTextStyle.infoTextStyle(fontSize: 25))
                          ],
                          pause: const Duration(milliseconds: 1600),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInDown(
                        duration: const Duration(milliseconds: 3000),
                        child: Expanded(
                          child: Text(
                            'Our cake bakery is small'
                            ' but with a big love for wonderful desserts.',
                            style: AppTextStyle.infoTextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(200),
                      child: Image.asset(AppAssets.baner, fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 300,
              ),
              const AboutMe(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
