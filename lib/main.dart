import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/pages/homePage.dart';
import 'package:weather_app/presentation/provider/weather_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;
    return MultiProvider(
      providers: [
        Provider<WeatherProviderImpl>(create: (_) => WeatherProviderImpl()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
