// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position position) fetchWeather,
    required TResult Function(String placeName) searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position position)? fetchWeather,
    TResult? Function(String placeName)? searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position position)? fetchWeather,
    TResult Function(String placeName)? searchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_SearchWeather value) searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_SearchWeather value)? searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWeatherImplCopyWith<$Res> {
  factory _$$FetchWeatherImplCopyWith(
          _$FetchWeatherImpl value, $Res Function(_$FetchWeatherImpl) then) =
      __$$FetchWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$FetchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchWeatherImpl>
    implements _$$FetchWeatherImplCopyWith<$Res> {
  __$$FetchWeatherImplCopyWithImpl(
      _$FetchWeatherImpl _value, $Res Function(_$FetchWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$FetchWeatherImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$FetchWeatherImpl implements _FetchWeather {
  const _$FetchWeatherImpl({required this.position});

  @override
  final Position position;

  @override
  String toString() {
    return 'WeatherEvent.fetchWeather(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeatherImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      __$$FetchWeatherImplCopyWithImpl<_$FetchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position position) fetchWeather,
    required TResult Function(String placeName) searchWeather,
  }) {
    return fetchWeather(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position position)? fetchWeather,
    TResult? Function(String placeName)? searchWeather,
  }) {
    return fetchWeather?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position position)? fetchWeather,
    TResult Function(String placeName)? searchWeather,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_SearchWeather value) searchWeather,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_SearchWeather value)? searchWeather,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class _FetchWeather implements WeatherEvent {
  const factory _FetchWeather({required final Position position}) =
      _$FetchWeatherImpl;

  Position get position;
  @JsonKey(ignore: true)
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchWeatherImplCopyWith<$Res> {
  factory _$$SearchWeatherImplCopyWith(
          _$SearchWeatherImpl value, $Res Function(_$SearchWeatherImpl) then) =
      __$$SearchWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String placeName});
}

/// @nodoc
class __$$SearchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SearchWeatherImpl>
    implements _$$SearchWeatherImplCopyWith<$Res> {
  __$$SearchWeatherImplCopyWithImpl(
      _$SearchWeatherImpl _value, $Res Function(_$SearchWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
  }) {
    return _then(_$SearchWeatherImpl(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchWeatherImpl implements _SearchWeather {
  const _$SearchWeatherImpl({required this.placeName});

  @override
  final String placeName;

  @override
  String toString() {
    return 'WeatherEvent.searchWeather(placeName: $placeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWeatherImpl &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWeatherImplCopyWith<_$SearchWeatherImpl> get copyWith =>
      __$$SearchWeatherImplCopyWithImpl<_$SearchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position position) fetchWeather,
    required TResult Function(String placeName) searchWeather,
  }) {
    return searchWeather(placeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position position)? fetchWeather,
    TResult? Function(String placeName)? searchWeather,
  }) {
    return searchWeather?.call(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position position)? fetchWeather,
    TResult Function(String placeName)? searchWeather,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_SearchWeather value) searchWeather,
  }) {
    return searchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_SearchWeather value)? searchWeather,
  }) {
    return searchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather(this);
    }
    return orElse();
  }
}

abstract class _SearchWeather implements WeatherEvent {
  const factory _SearchWeather({required final String placeName}) =
      _$SearchWeatherImpl;

  String get placeName;
  @JsonKey(ignore: true)
  _$$SearchWeatherImplCopyWith<_$SearchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  bool get weatherLoading => throw _privateConstructorUsedError;
  bool get weatherFailure => throw _privateConstructorUsedError;
  bool get weatherSucess => throw _privateConstructorUsedError;
  Weather? get weatherData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool weatherLoading,
      bool weatherFailure,
      bool weatherSucess,
      Weather? weatherData});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherLoading = null,
    Object? weatherFailure = null,
    Object? weatherSucess = null,
    Object? weatherData = freezed,
  }) {
    return _then(_value.copyWith(
      weatherLoading: null == weatherLoading
          ? _value.weatherLoading
          : weatherLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherFailure: null == weatherFailure
          ? _value.weatherFailure
          : weatherFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherSucess: null == weatherSucess
          ? _value.weatherSucess
          : weatherSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool weatherLoading,
      bool weatherFailure,
      bool weatherSucess,
      Weather? weatherData});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherLoading = null,
    Object? weatherFailure = null,
    Object? weatherSucess = null,
    Object? weatherData = freezed,
  }) {
    return _then(_$InitialImpl(
      weatherLoading: null == weatherLoading
          ? _value.weatherLoading
          : weatherLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherFailure: null == weatherFailure
          ? _value.weatherFailure
          : weatherFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherSucess: null == weatherSucess
          ? _value.weatherSucess
          : weatherSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(
      {required this.weatherLoading,
      required this.weatherFailure,
      required this.weatherSucess,
      this.weatherData});

  @override
  final bool weatherLoading;
  @override
  final bool weatherFailure;
  @override
  final bool weatherSucess;
  @override
  final Weather? weatherData;

  @override
  String toString() {
    return 'WeatherState(weatherLoading: $weatherLoading, weatherFailure: $weatherFailure, weatherSucess: $weatherSucess, weatherData: $weatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.weatherLoading, weatherLoading) ||
                other.weatherLoading == weatherLoading) &&
            (identical(other.weatherFailure, weatherFailure) ||
                other.weatherFailure == weatherFailure) &&
            (identical(other.weatherSucess, weatherSucess) ||
                other.weatherSucess == weatherSucess) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, weatherLoading, weatherFailure, weatherSucess, weatherData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WeatherState {
  factory _Initial(
      {required final bool weatherLoading,
      required final bool weatherFailure,
      required final bool weatherSucess,
      final Weather? weatherData}) = _$InitialImpl;

  @override
  bool get weatherLoading;
  @override
  bool get weatherFailure;
  @override
  bool get weatherSucess;
  @override
  Weather? get weatherData;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
