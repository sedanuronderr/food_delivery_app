import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/response/Categories.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: "https://www.themealdb.com/api/json/v1/1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("categories.php")
  Future<Categories> getCategories();

}