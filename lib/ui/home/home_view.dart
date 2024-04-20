import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  var deger= null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
    disposeViewModel: false,
    fireOnModelReadyOnce: false,
    onModelReady: (model) => model.initialised,
    builder: (context, model, widget) =>

Scaffold(body: Center(child:
Column(
  children: [
    Text(model.categoryList != null ?
    model.categoryList!.categories.length.toString():
    "kll"),

  ],
),

)

)
    );

  }
  
}