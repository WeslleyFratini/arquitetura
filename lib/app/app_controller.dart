import 'package:arch/app/interfaces/local_storage_interface.dart';
import 'package:arch/app/services/shared_local_storage_service.dart';
import 'package:arch/app/viewModels/change_theme_viewmodel.dart';
import 'package:flutter/foundation.dart';
class AppController {
  static final AppController instance = AppController._();
  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();
}
