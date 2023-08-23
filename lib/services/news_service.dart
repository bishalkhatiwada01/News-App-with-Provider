import 'package:dio/dio.dart';
import 'package:newsprovider/constants/constants.dart';

class NewsService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiUrls.baseUrl,
      responseType: ResponseType.json,
    ),
  );
  fetchNews() async {
    var response = await _dio.get("&q=sports");

    return response.data;
  }

  // fetchNewsBySearching(String title) async{
  //   var response = await _dio.get()
  // }
}
