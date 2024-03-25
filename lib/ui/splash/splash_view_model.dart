import 'package:flutter/cupertino.dart';

import '../../app/app.router.dart';
import '../../app/app_base_view_model.dart';

class SplashViewModel extends AppBaseViewModel {
  init(BuildContext context) {
    Future<void>.delayed(const Duration(seconds: 3),
            () => navigationService.navigateTo(Routes.mainView));
  }
}