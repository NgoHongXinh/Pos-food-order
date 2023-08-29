import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app_font_style.dart';
import 'package:food_order_pos/globals/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Email: xinhkg00@gmail.com',
              style: AppTextStyle.infoTextStyle(),
            ),
            Text('Phone: [+84]832802655', style: AppTextStyle.infoTextStyle()),
            Text('Adress: 360 Pham Huu Lau, Ho Chi Minh city',
                style: AppTextStyle.infoTextStyle())
          ],
        ),
      ),
    );
  }
}
