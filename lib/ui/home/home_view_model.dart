import '../../app/app_base_view_model.dart';
import '../../core/models/response/Categories.dart';

class HomeViewModel extends AppBaseViewModel {
   Categories? categoryList;


   void initialize() async {
     setBusy(true);
     if (categoryList == null) {
       await getCategories();
     }
     notifyListeners();
     setBusy(false);
   }

   getCategories() async {
     await repository.getCategories().then((categories) {
       this.categoryList = categories.categories as Categories?;
       notifyListeners();
     }).catchError((error) {});
   }


}