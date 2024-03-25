import 'package:get_it/get_it.dart';

import '../../app/app_base_view_model.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => AppBaseViewModel());
}