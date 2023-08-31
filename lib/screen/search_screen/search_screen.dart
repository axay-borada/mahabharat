// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/search_screen/search_controller.dart';
import 'package:mahabharat/screen/search_screen/search_widget.dart';
import 'package:mahabharat/utils/asset_res.dart';

import '../../model/videos_model.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  List<ProductVideo> productVideo = [];

  @override
  Widget build(BuildContext context) {
    Get.put(searchController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetRes.homeBgImage),
          ),
        ),
        child: searchMainColumn(),
      ),
    );
  }
}
