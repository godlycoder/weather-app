part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading({required bool isShown}) = _Loading;
  const factory HomeState.error({required String message}) = _Error;
  const factory HomeState.hasDataForecast({required ForecastUiModel data})
    = _HasDataForecast;
}
