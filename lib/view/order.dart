import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app-assets.dart';
import 'package:food_order_pos/globals/app_button.dart';
import 'package:food_order_pos/globals/constants.dart';
import 'package:quantity_input/quantity_input.dart';

import '../globals/app_colors.dart';
import '../globals/app_font_style.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

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
                  'ORDER',
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
              Expanded(
                child: LeftView(),
              ),
              RightView(),
            ],
          ),
        ));
  }
}

class RightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: AppColors.bgColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 430, bottom: 0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(children: [
            Text(
              'Date:' + ' 28/09/2023',
              style: AppTextStyle.normalTextStyle(),
            ),
            Text(
              'Time:' + ' 08:30',
              style: AppTextStyle.normalTextStyle(),
            ),
            Text(
              'Quantity:' + ' 2',
              style: AppTextStyle.normalTextStyle(),
            ),
            Text(
              'TOTAL: ' + '150000',
              style: AppTextStyle.normalTextStyle(),
            ),
            Constants.sizedBox(height: 10),
            AppButton.buildMaterialButton(
                buttonName: 'Print bill', onTap: () {})
          ]),
        ),
      ),
    );
  }
}

class LeftView extends StatelessWidget {
  int simpleIntInput = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: ListView(
        children: [
          ListItemOrder(
            cake: 'Blueberry Cake',
            assets: AppAssets.blueberrycake,
            price: '25000',
          ),
          ListItemOrder(
            cake: 'Macha Cake',
            assets: AppAssets.machacake,
            price: '25000',
          ),
          ListItemOrder(
            cake: 'Cheese Cake',
            assets: AppAssets.cheesecake,
            price: '25000',
          ),
          ListItemOrder(
            cake: 'Strawberry Cake',
            assets: AppAssets.strawberrycake,
            price: '25000',
          ),
          ListItemOrder(
            cake: 'Sakura Macarons',
            assets: AppAssets.sakuramacarons,
            price: '25000',
          ),
        ],
      ),
    );
  }

  Row ListItemOrder({
    required String cake,
    required String assets,
    required String price,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox.fromSize(
                size: Size.fromRadius(100),
                child: Image.asset(assets, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cake,
                style: AppTextStyle.normalTextStyle(),
              ),
              Constants.sizedBox(height: 20),
              Text(
                price + ' đ',
                style: AppTextStyle.normalTextStyle(),
              )
            ],
          ),
        )),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
              QuantityInput(
                  value: simpleIntInput,
                  onChanged: (value) => setState(() =>
                      simpleIntInput = int.parse(value.replaceAll(',', '')))),
              Text('Value: $simpleIntInput',
                  style: AppTextStyle.normalTextStyle())
            ])),
        const Icon(
          Icons.delete,
          size: 30.0,
        ),
      ],
    );
  }

  setState(int Function() param0) {}
}
