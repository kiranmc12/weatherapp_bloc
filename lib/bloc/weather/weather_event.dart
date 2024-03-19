part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeather({required Position position}) =
      _FetchWeather;
       const factory WeatherEvent.searchWeather({required String placeName}) =
      _SearchWeather;
}
