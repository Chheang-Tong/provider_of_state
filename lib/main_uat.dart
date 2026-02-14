import 'package:state_provider/core/constants/env.dart';

import 'app.dart' as app;

void main() {
  Env.name = "UAT";
  Env.appName = "Morea Sales UAT";
  Env.baseApiUrl = 'http://192.46.225.46:1016';
  Env.isDebugging = true;
  Env.shouldShowApiLog = false;

  app.main();
}
