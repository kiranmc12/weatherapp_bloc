part of 'weather_bloc.dart';


@freezed
class WeatherState with _$WeatherState {
   factory WeatherState({
    required bool weatherLoading,
    required bool weatherFailure,
    required bool weatherSucess,
   final Weather? weatherData,

  } )= _Initial;
  factory WeatherState.initial()=>WeatherState(weatherLoading: false,weatherFailure: false,weatherSucess: false);
}
