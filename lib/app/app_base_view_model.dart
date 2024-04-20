import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../core/di/get_it.dart';
import '../core/repository/repository.dart';

class AppBaseViewModel extends BaseViewModel {
  NavigationService navigationService = getIt<NavigationService>();
  Repository repository = getIt<Repository>();


}