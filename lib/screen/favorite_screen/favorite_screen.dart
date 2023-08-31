// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_widget.dart';

import '../../model/videos_model.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});
  List<ProductVideo>? products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favouriteScreen(),
    );
  }
}
