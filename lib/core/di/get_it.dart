import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app_base_view_model.dart';
import '../api/api_client.dart';
import '../repository/repository.dart';
import '../services/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async{
  getIt.registerLazySingleton(() => AppBaseViewModel());
  getIt.registerLazySingleton(() => NavigationService());


  //NETWORK
  getIt.registerLazySingleton<Dio>(() => ApiClient().getDio());
  getIt.registerLazySingleton(() => ApiService(getIt.get()));
  getIt.registerLazySingleton(() => Repository(getIt.get()));

}