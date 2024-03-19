import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:weatherbloc/bloc/weather/weather_bloc.dart';
import 'package:weatherbloc/screens/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "assets/weather.gif",
      nextScreen: FutureBuilder(
        future: determinePosition(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotateChase,
                    colors: [Colors.deepPurple, Colors.amber],
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            // Display an error message
            return Scaffold(
              body: Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          } else if (snapshot.hasData) {
            final Position position = snapshot.data as Position;

            final weatherBloc = WeatherBloc();

            weatherBloc.add(WeatherEvent.fetchWeather(position: position));

            return BlocProvider<WeatherBloc>(
              create: (context) => weatherBloc,
              child: ScreenHome(
                pos: position,
              ),
            );
          } else {
            // Handle other states if needed
            return const Scaffold(
              body: Center(
                child: Text('Unexpected error occurred'),
              ),
            );
          }
        },
      ),
    );
  }
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  return await Geolocator.getCurrentPosition();
}
