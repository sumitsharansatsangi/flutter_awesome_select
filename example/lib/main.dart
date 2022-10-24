import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 712),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Features(),
        builder: (_, child) => MaterialApp(
              theme: ThemeData(textTheme: TextTheme()),
              title: 'Smart Select',
              home: child,
            ));
  }
}
