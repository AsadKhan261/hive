import 'package:flutter/material.dart';
import 'package:hive/configs/front_end_configs.dart';
import 'package:hive/presentation/elements/app_button.dart';
import 'package:hive/presentation/elements/custom_text.dart';

class HomeCard extends StatelessWidget {
  String title;

  HomeCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: title),
            Row(
              children: [
                AppButtton(
                    width: 60,
                    height: 40,
                    text: 'FL',
                    color: FrontEndConfigs.kPrimaryColor,
                    onPress: () {},
                    textColor: Colors.white),
                const SizedBox(
                  width: 10,
                ),
                AppButtton(
                    width: 60,
                    height: 40,
                    text: '400',
                    color: FrontEndConfigs.kPrimaryColor,
                    onPress: () {},
                    textColor: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
