

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../core/di/get_it.dart';
import 'app.router.dart';
import 'app_base_view_model.dart';

class FoodDeliveryApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);
    // TODO: implement build
    return ViewModelBuilder<AppBaseViewModel>.reactive(
        viewModelBuilder: () => getIt<AppBaseViewModel>(),
        onModelReady: (viewModel) => viewModel.initialised,
        builder: (context, viewModel, child) => MaterialApp(
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorObservers: [StackedService.routeObserver],
          title: "Food Delivery App",
          debugShowCheckedModeBanner: false,
        ));
  }

}