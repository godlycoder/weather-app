import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/model/forcecast_ui_model.dart';
import 'package:weather_app/domain/usecase/get_forecast.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetForecast _getForecast;

  HomeCubit(this._getForecast) : super(const HomeState.initial());

  void getForecast(String query) async {
    emit(const HomeState.loading(isShown: true));

    final result = await _getForecast.execute(query);

    emit(const HomeState.loading(isShown: false));

    result.fold(
      (error) => emit(HomeState.error(message: error.message)),
      (data) => emit(HomeState.hasDataForecast(data: data))
    );
  }
}
