import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weatherbloc/constants.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  TextEditingController searchController = TextEditingController();
  WeatherBloc() : super(WeatherState.initial()) {
    on<_FetchWeather>((event, emit) async {
      emit(state.copyWith(weatherLoading: true));
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);

        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );
        emit(state.copyWith(
            weatherFailure: false,
            weatherSucess: true,
            weatherData: weather,
            weatherLoading: false));
        searchController.clear();
      } catch (e) {
        emit(state.copyWith(weatherFailure: true));
      }
    });

    on<_SearchWeather>((event, emit) async {
      emit(state.copyWith(weatherLoading: true));
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByCityName(event.placeName);
        emit(state.copyWith(
            weatherFailure: false, weatherSucess: true, weatherData: weather));
        searchController.clear();
      } catch (e) {
        emit(state.copyWith(weatherFailure: true));
      }
    });
  }
}
