part of 'boarding_cubit.dart';

@freezed
class BoardingState with _$BoardingState {
  const factory BoardingState.initial() = _Initial;
  const factory BoardingState.validateForm({required bool isEnabled})
    = _ValidateForm;
  const factory BoardingState.hasDataRegion({required List<FieldUiModel> data})
    = HasDataRegion;
  const factory BoardingState.hasDataCity({required List<FieldUiModel> data})
    = HasDataCity;
}
