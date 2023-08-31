import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/feedback_screen/feedback_screen.dart';

class SettingController extends GetxController {
  bool isLiteTheme = false;

  Future<void> share() async {
    await FlutterShare.share(
      title: 'In-ShortApp',
      linkUrl: 'app link attached',
    );
  }

  void rate() {}

  void feedback() {
    Get.to(() => const FeedBackScreen());
  }

  void lightTheme() {
    isLiteTheme = !isLiteTheme;
    update(["isLight"]);
  }
}
