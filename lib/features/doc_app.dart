import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/core/routing/routing.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  DocApp({super.key, required appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          textTheme: ThemeData.light().textTheme.apply(
                bodyColor: ColorsManager.mainBlue,
                displayColor: ColorsManager.mainBlue,
              ),
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routing.onBordingScreen,
      ),
    );
  }
}
