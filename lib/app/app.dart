import 'package:stacked/stacked_annotations.dart';

import '../ui/home/home_view.dart';
import '../ui/main/main_view.dart';
import '../ui/meal_detail/detail_view.dart';
import '../ui/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: MainView),
    MaterialRoute(page: DetailView),
   // MaterialRoute(page: CategoriesView),
   // MaterialRoute(page: NearView),
   // MaterialRoute(page: BasketView),
  ],
)
class App {}