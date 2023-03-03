import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';
import 'package:weather_app/domain/usecase/get_list_city.dart';
import 'package:weather_app/domain/usecase/get_list_region.dart';

part 'boarding_state.dart';
part 'boarding_cubit.freezed.dart';

class BoardingCubit extends Cubit<BoardingState> {
  final GetListRegion _getListRegion;
  final GetListCity _getListCity;

  BoardingCubit(this._getListRegion, this._getListCity) : super(const BoardingState.initial());

  void getRegions() async {
    final result = await _getListRegion.execute();
    result.fold(
      (error) => null,
      (data) => emit(HasDataRegion(data: data))
    );
  }

  void validateForm(String name, String? city) {
    final isEnabled = name.isNotEmpty && city?.isNotEmpty == true;

    emit(_ValidateForm(isEnabled: isEnabled));
  }

  void getCities(String id) async {
    final result = await _getListCity.execute(id);

    result.fold(
      (error) => null,
      (data) => emit(HasDataCity(data: data))
    );
  }

  void clearRegion() {
    emit(const HasDataRegion(data: []));
  }

  void clearCity() {
    emit(const HasDataCity(data: []));
  }
}
