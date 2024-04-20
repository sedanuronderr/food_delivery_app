import '../models/response/Categories.dart';

import '../services/api_service.dart';

class Repository {
   final ApiService _apiService;

  Repository(this._apiService);

   Future<Categories> getCategories() async {
     return await _apiService.getCategories();
   }
}