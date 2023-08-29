import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app-assets.dart';
import 'package:food_order_pos/globals/app_button.dart';
import 'package:food_order_pos/globals/app_colors.dart';
import 'package:food_order_pos/globals/app_font_style.dart';
import 'package:food_order_pos/globals/constants.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
                'MENU',
                style: AppTextStyle.headerInfoTextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(250, 128, 114, 0.8),
              Color.fromRGBO(255, 192, 203, 0.8)
            ])),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Constants.sizedBox(height: 40),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: [
                  buildAnimatedContianer(
                    cake: 'Blueberry Cake',
                    assets: AppAssets.blueberrycake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Strawberry Cake',
                    assets: AppAssets.strawberrycake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Chocolate Cake',
                    assets: AppAssets.chocolatecake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Egg Tart',
                    assets: AppAssets.eggtart,
                  ),
                  buildAnimatedContianer(
                    cake: 'Peach Mochi',
                    assets: AppAssets.peachmochi,
                  ),
                  buildAnimatedContianer(
                    cake: 'Organe Cake',
                    assets: AppAssets.organeacake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Cheese Cake',
                    assets: AppAssets.cheesecake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Macha Cake',
                    assets: AppAssets.machacake,
                  ),
                  buildAnimatedContianer(
                    cake: 'Sakura Macarons',
                    assets: AppAssets.sakuramacarons,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContianer({
    required String cake,
    required String assets,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        // decoration: BoxDecoration(
        //     color: AppColors.bgColor,
        //     borderRadius: BorderRadius.circular(30),
        //     boxShadow: [
        //       BoxShadow(
        //           color: Colors.black45,
        //           spreadRadius: 4.0,
        //           blurRadius: 4.5,
        //           offset: Offset(3.0, 4.5))
        //     ]),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox.fromSize(
              size: Size.fromRadius(100),
              child: Image.asset(assets, fit: BoxFit.cover),
            ),
          ),
          Constants.sizedBox(height: 10),
          Text(
            cake,
            style: AppTextStyle.headerInfoTextStyle(
                fontSize: 20, color: Colors.black),
          ),
          Constants.sizedBox(height: 5),
          AppButton.buildMaterialButton(buttonName: 'Order', onTap: () {}),
        ]),
      ),
    );
  }
}
