import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals/app_colors.dart';
import '../globals/app_font_style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: FadeInDown(
          duration: Duration(milliseconds: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SETTING',
                style: AppTextStyle.headerInfoTextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(250, 128, 114, 0.8),
              Color.fromRGBO(255, 192, 203, 0.8)
            ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
            ),
            Expanded(
                child: Container(
              color: AppColors.bgColor,
            ))
          ],
        ),
      ),
    );
  }
}
