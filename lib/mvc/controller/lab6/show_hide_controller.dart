import 'package:adv_flutter/import_export/import_export.dart';

class ShowHideContentController extends GetxController{
  RxBool toShow = false.obs;
  bool isDark = false;
  ThemeMode get theme => isDark? ThemeMode.dark:ThemeMode.light;

  void showContent(){
    toShow.value = !toShow.value;
    // isDark = toShow.value;
    // Get.changeThemeMode(theme);
  }

}