import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:mahabharat/model/videos_model.dart';
import 'package:mahabharat/services/http_ser.dart';
import 'package:mahabharat/utils/endpoint_res.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response = await HttpService.getApi(url: EndPointRes.apiUrl);
      if (response != null && response.statusCode == 200) {
        // print(response.body);
        return productVideoFromJson(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
