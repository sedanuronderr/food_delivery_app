import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/helpers/create_bottom_nav_item.dart';
import 'main_view_model.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
    disposeViewModel: false,

    builder: (context, model, child) => Scaffold(

      body: Center(
        child: Text("mainview"),
      ),
      bottomNavigationBar: BottomNavigationBar(

    elevation: 0,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey,
    selectedFontSize: 13,
    unselectedFontSize: 13,
    items: [
    createNavItem(TabItem.Home),
    createNavItem(TabItem.Search),
    createNavItem(TabItem.Orders),
    createNavItem(TabItem.Favorite),
    ],
    onTap: (value) {
    model.setTabIndex(value);
    },
    currentIndex: model.currentTabIndex,
      ),
    )
    );
  }
  
}