import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app-assets.dart';
import 'package:food_order_pos/globals/app_colors.dart';
import 'package:food_order_pos/globals/app_font_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      child: Row(
        children: [
          Image.asset(
            AppAssets.store,
            height: 450,
            width: 400,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 4600),
                child: Text(
                  'About Me',
                  style: AppTextStyle.headerInfoTextStyle(fontSize: 30),
                ),
              ),
              FadeInLeft(
                  duration: const Duration(milliseconds: 5600),
                  child: Text(
                    'We are exactly what you are looking for. Yes, we are an FSSAI certified online cake and Bakery Company that specializes in delivering absolutely lip-smacking delicacies.'
                    ' Currently, we are delivering cakes in Gurgaon, Delhi, Noida,Ghaziabad, Bangalore, Hyderabad, Mumbai, Kolkata, Chennai, and many other cities.'
                    ' We are here to create some unforgettable memories and some undying emotions by helping you to send cake online to your beloved ones.'
                    ' Our mission is to deliver these heavenly cakes at your doorstep on time to make your celebrations even grander. '
                    ' Because for us, it is not just a Cake but more and so we craft it with a blend of inspiration, passion, and love. '
                    ' We guarantee an extraordinary taste in your choicest flavors with ravishing designs. Sounds perfect, isn’t it?',
                    style: AppTextStyle.infoTextStyle(
                        fontSize: 25, color: Colors.black),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
