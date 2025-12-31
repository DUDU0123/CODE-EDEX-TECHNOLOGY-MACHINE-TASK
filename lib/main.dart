import 'package:codeedex_machine_test_app/modules/root_widget_page.dart';
import 'package:codeedex_machine_test_app/services/shared_prefs_service.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/initi_controllers.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsService.init();
  await initControllers();
  runApp(RootWidgetPage());
}