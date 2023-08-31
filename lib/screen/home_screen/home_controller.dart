import 'package:get/get.dart';
import 'package:mahabharat/model/videos_model.dart';
import 'package:mahabharat/screen/video_screen/video_screen.dart';

import '../api.dart';

class HomeController extends GetxController {
  List<ProductVideo>? videoData;

  @override
  void onInit() {
    getVideoData();
    super.onInit();
  }

  ///--------------------------------------------- get data -----------------------------------------------///

  Future<void> getVideoData() async {
    videoData = await HomeScreenApi.getData();
    update(["listView"]);
  }

  Future<void> onTapLike(int index) async {
    bool id = videoData![index].like!;
    videoData![index].like = !id;
    print("==========$id");
    print("==========${videoData![index]}");
    update(["listView"]);
  }

  ///---------------------------------watch Video-------------------------------------///

  void watchVideo(int indexVideo, int indexTitle) {
    String url = videoData![indexVideo].productVideoUrl![0];
    print("url video========================================>$url");
    update(["listView"]);
    Get.to(() => VideoScreen(data: url, index: indexTitle));
  }
}
