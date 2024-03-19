import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:weatherbloc/bloc/weather/weather_bloc.dart';
import 'package:weatherbloc/constants.dart';
import 'package:weatherbloc/screens/widgets/animation.dart';
import 'package:weatherbloc/screens/widgets/detail_row_widget.dart';
import 'package:weatherbloc/utils/debouncer.dart';

class ScreenHome extends StatelessWidget {
  final Position pos;
  ScreenHome({super.key, required this.pos});
  final _debouncer = Debouncer(milliseconds: 1000);
  final greeting = getGreeting();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kblack,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ktransparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                context
                    .read<WeatherBloc>()
                    .add(WeatherEvent.fetchWeather(position: pos));
              },
              icon: const Icon(
                Icons.refresh,
                color: kWhite,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state.weatherLoading) {
              return  const Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotateChase,
                    colors: [Colors.deepPurple, Colors.amber],
                  ),
                ),
              );
            }
            if (state.weatherFailure) {
              return const Center(
                child: Text("Unable to fetch weather,please try again"),
              );
            }
            if (state.weatherData != null) {
              return SizedBox(
                height: sHeight,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, -1.2),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100.0,
                        sigmaY: 100.0,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(color: ktransparent),
                      ),
                    ),
                    SizedBox(
                      width: sWidth,
                      height: sHeight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller:
                                context.read<WeatherBloc>().searchController,
                            onChanged: (value) {
                              _debouncer.run(() {
                                context.read<WeatherBloc>().add(
                                    WeatherEvent.searchWeather(
                                        placeName: value.trim()));
                              });
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: ktransparent, // Background color
                              prefixIcon: Padding(
                                padding: EdgeInsets.zero,
                                child: Icon(Icons.search, color: kWhite),
                              ),

                              hintText: 'Enter City name',
                              labelStyle: TextStyle(color: kWhite),
                              hintStyle: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14), // Hint tet
                              border: InputBorder.none,

                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 12.0), // Padding
                            ),
                          ),
                          kHeight10,
                          Text(
                            "📍${state.weatherData!.areaName!}",
                            style: const TextStyle(
                                color: kWhite, fontWeight: FontWeight.normal),
                          ),
                          kHeight10,
                          Text(
                            greeting,
                            style: const TextStyle(
                                fontSize: 25,
                                color: kWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          AnimatedGrowShrinkContainer(
                            child: getWeatherIcon(
                                state.weatherData!.weatherConditionCode!),
                          ),
                          Center(
                            child: Text(
                              "${state.weatherData!.temperature!.celsius!.round()}°C",
                              style: const TextStyle(
                                  color: kWhite,
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              state.weatherData!.weatherMain!.toUpperCase(),
                              style: const TextStyle(
                                  color: kWhite,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              DateFormat("EEEE dd ")
                                  .add_jm()
                                  .format(DateTime.now()),
                              style: const TextStyle(
                                  color: kWhite,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          kHeight10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DetailRow(
                                detail: "Sunrise",
                                imageUrl: 'assets/11.png',
                                date: DateFormat()
                                    .add_jm()
                                    .format(state.weatherData!.sunrise!),
                              ),
                              DetailRow(
                                detail: "Sunset",
                                imageUrl: 'assets/12.png',
                                date: DateFormat()
                                    .add_jm()
                                    .format(state.weatherData!.sunset!),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DetailRow(
                                detail: "Temp Max",
                                imageUrl: "assets/13.png",
                                date:
                                    "${state.weatherData!.tempMax!.celsius!.round()}°C",
                              ),
                              DetailRow(
                                detail: "Temp Min",
                                date:
                                    " ${state.weatherData!.tempMin!.celsius!.round()}°C",
                                imageUrl: "assets/14.png",
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotateChase,
                    colors: [Colors.deepPurple, Colors.amber],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
