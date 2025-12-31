import 'package:codeedex_machine_test_app/modules/login/controller/login_page_controller.dart';
import 'package:codeedex_machine_test_app/modules/root_widget_page.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  initControllers();
  runApp(RootWidgetPage());
}

initControllers(){
  Get.put<LoginPageController>(LoginPageController());
}