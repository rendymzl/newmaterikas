import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:auto_updater/auto_updater.dart';

import 'package:get/get.dart';

import 'core/theme/app_theme.dart';
import 'core/database/powersync.dart';
import 'routes/app_pages.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();

  // String feedURL = 'https://rendywardana.site/releases/appcast.xml';
  // await autoUpdater.setFeedURL(feedURL);
  // await autoUpdater.checkForUpdates();
  // await autoUpdater.setScheduledCheckInterval(3600);

  // windowManager.waitUntilReadyToShow(null, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });

  await openDatabase();

  runApp(
    GetMaterialApp(
      title: "Materikas",
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // locale: const Locale('en', 'US'),
      // supportedLocales: const [
      //   Locale('id'),
      // ],
      theme: appTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
