import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/common/firstRowCommon.dart';
import 'package:mahabharat/common/listTile_common.dart';
import 'package:mahabharat/screen/setting_screen/setting_controller.dart';
import 'package:mahabharat/utils/asset_res.dart';

import '../rate screen/rate_controller.dart';

Widget settingMainContainer() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetRes.homeBgImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: Get.height * 0.060),
        firstRow(),
        GetBuilder<SettingController>(
          id: "isLight",
          builder: (controller) => listTileCommon(
            subTitle: const Text("For better readability at night"),
            title: 'Night Mode',
            image: Image.asset(AssetRes.chakra),
            onTapped: () {
              controller.isLiteTheme;
            },
          ),
        ),
        listTileCommon(
          subTitle: const Text("Play title song when you are in video list Screen "),
          title: 'Play Title Song',
          image: Image.asset(AssetRes.chakra),
          trailing: Image.asset(AssetRes.chakra),
          onTapped: () {},
        ),
        GetBuilder<SettingController>(
          builder: (controller) => listTileCommon(
            title: 'Share this app',
            image: Image.asset(AssetRes.chakra),
            onTapped: () {
              controller.share();
            },
          ),
        ),
        GetBuilder<RateController>(
          builder: (controller) => listTileCommon(
            title: 'Rate Us',
            image: Image.asset(AssetRes.chakra),
            onTapped: () {
              controller.rateBar();
            },
          ),
        ),
        listTileCommon(
          title: 'Feedback',
          image: Image.asset(AssetRes.chakra),
          onTapped: () {},
        ),
        listTileCommon(
          title: 'Terms & Conditions',
          image: Image.asset(AssetRes.chakra),
          onTapped: () {},
        ),
        listTileCommon(
          title: 'Privacy Policy',
          image: Image.asset(AssetRes.chakra),
          onTapped: () {},
        ),
      ],
    ),
  );
}
