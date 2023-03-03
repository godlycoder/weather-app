// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) validateForm,
    required TResult Function(List<FieldUiModel> data) hasDataRegion,
    required TResult Function(List<FieldUiModel> data) hasDataCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isEnabled)? validateForm,
    TResult? Function(List<FieldUiModel> data)? hasDataRegion,
    TResult? Function(List<FieldUiModel> data)? hasDataCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? validateForm,
    TResult Function(List<FieldUiModel> data)? hasDataRegion,
    TResult Function(List<FieldUiModel> data)? hasDataCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidateForm value) validateForm,
    required TResult Function(HasDataRegion value) hasDataRegion,
    required TResult Function(HasDataCity value) hasDataCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidateForm value)? validateForm,
    TResult? Function(HasDataRegion value)? hasDataRegion,
    TResult? Function(HasDataCity value)? hasDataCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidateForm value)? validateForm,
    TResult Function(HasDataRegion value)? hasDataRegion,
    TResult Function(HasDataCity value)? hasDataCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardingStateCopyWith<$Res> {
  factory $BoardingStateCopyWith(
          BoardingState value, $Res Function(BoardingState) then) =
      _$BoardingStateCopyWithImpl<$Res, BoardingState>;
}

/// @nodoc
class _$BoardingStateCopyWithImpl<$Res, $Val extends BoardingState>
    implements $BoardingStateCopyWith<$Res> {
  _$BoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BoardingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BoardingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) validateForm,
    required TResult Function(List<FieldUiModel> data) hasDataRegion,
    required TResult Function(List<FieldUiModel> data) hasDataCity,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isEnabled)? validateForm,
    TResult? Function(List<FieldUiModel> data)? hasDataRegion,
    TResult? Function(List<FieldUiModel> data)? hasDataCity,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? validateForm,
    TResult Function(List<FieldUiModel> data)? hasDataRegion,
    TResult Function(List<FieldUiModel> data)? hasDataCity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidateForm value) validateForm,
    required TResult Function(HasDataRegion value) hasDataRegion,
    required TResult Function(HasDataCity value) hasDataCity,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidateForm value)? validateForm,
    TResult? Function(HasDataRegion value)? hasDataRegion,
    TResult? Function(HasDataCity value)? hasDataCity,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidateForm value)? validateForm,
    TResult Function(HasDataRegion value)? hasDataRegion,
    TResult Function(HasDataCity value)? hasDataCity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BoardingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ValidateFormCopyWith<$Res> {
  factory _$$_ValidateFormCopyWith(
          _$_ValidateForm value, $Res Function(_$_ValidateForm) then) =
      __$$_ValidateFormCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$_ValidateFormCopyWithImpl<$Res>
    extends _$BoardingStateCopyWithImpl<$Res, _$_ValidateForm>
    implements _$$_ValidateFormCopyWith<$Res> {
  __$$_ValidateFormCopyWithImpl(
      _$_ValidateForm _value, $Res Function(_$_ValidateForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$_ValidateForm(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ValidateForm implements _ValidateForm {
  const _$_ValidateForm({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'BoardingState.validateForm(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateForm &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateFormCopyWith<_$_ValidateForm> get copyWith =>
      __$$_ValidateFormCopyWithImpl<_$_ValidateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) validateForm,
    required TResult Function(List<FieldUiModel> data) hasDataRegion,
    required TResult Function(List<FieldUiModel> data) hasDataCity,
  }) {
    return validateForm(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isEnabled)? validateForm,
    TResult? Function(List<FieldUiModel> data)? hasDataRegion,
    TResult? Function(List<FieldUiModel> data)? hasDataCity,
  }) {
    return validateForm?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? validateForm,
    TResult Function(List<FieldUiModel> data)? hasDataRegion,
    TResult Function(List<FieldUiModel> data)? hasDataCity,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidateForm value) validateForm,
    required TResult Function(HasDataRegion value) hasDataRegion,
    required TResult Function(HasDataCity value) hasDataCity,
  }) {
    return validateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidateForm value)? validateForm,
    TResult? Function(HasDataRegion value)? hasDataRegion,
    TResult? Function(HasDataCity value)? hasDataCity,
  }) {
    return validateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidateForm value)? validateForm,
    TResult Function(HasDataRegion value)? hasDataRegion,
    TResult Function(HasDataCity value)? hasDataCity,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(this);
    }
    return orElse();
  }
}

abstract class _ValidateForm implements BoardingState {
  const factory _ValidateForm({required final bool isEnabled}) =
      _$_ValidateForm;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$_ValidateFormCopyWith<_$_ValidateForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasDataRegionCopyWith<$Res> {
  factory _$$HasDataRegionCopyWith(
          _$HasDataRegion value, $Res Function(_$HasDataRegion) then) =
      __$$HasDataRegionCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldUiModel> data});
}

/// @nodoc
class __$$HasDataRegionCopyWithImpl<$Res>
    extends _$BoardingStateCopyWithImpl<$Res, _$HasDataRegion>
    implements _$$HasDataRegionCopyWith<$Res> {
  __$$HasDataRegionCopyWithImpl(
      _$HasDataRegion _value, $Res Function(_$HasDataRegion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HasDataRegion(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FieldUiModel>,
    ));
  }
}

/// @nodoc

class _$HasDataRegion implements HasDataRegion {
  const _$HasDataRegion({required final List<FieldUiModel> data})
      : _data = data;

  final List<FieldUiModel> _data;
  @override
  List<FieldUiModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BoardingState.hasDataRegion(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasDataRegion &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasDataRegionCopyWith<_$HasDataRegion> get copyWith =>
      __$$HasDataRegionCopyWithImpl<_$HasDataRegion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) validateForm,
    required TResult Function(List<FieldUiModel> data) hasDataRegion,
    required TResult Function(List<FieldUiModel> data) hasDataCity,
  }) {
    return hasDataRegion(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isEnabled)? validateForm,
    TResult? Function(List<FieldUiModel> data)? hasDataRegion,
    TResult? Function(List<FieldUiModel> data)? hasDataCity,
  }) {
    return hasDataRegion?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? validateForm,
    TResult Function(List<FieldUiModel> data)? hasDataRegion,
    TResult Function(List<FieldUiModel> data)? hasDataCity,
    required TResult orElse(),
  }) {
    if (hasDataRegion != null) {
      return hasDataRegion(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidateForm value) validateForm,
    required TResult Function(HasDataRegion value) hasDataRegion,
    required TResult Function(HasDataCity value) hasDataCity,
  }) {
    return hasDataRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidateForm value)? validateForm,
    TResult? Function(HasDataRegion value)? hasDataRegion,
    TResult? Function(HasDataCity value)? hasDataCity,
  }) {
    return hasDataRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidateForm value)? validateForm,
    TResult Function(HasDataRegion value)? hasDataRegion,
    TResult Function(HasDataCity value)? hasDataCity,
    required TResult orElse(),
  }) {
    if (hasDataRegion != null) {
      return hasDataRegion(this);
    }
    return orElse();
  }
}

abstract class HasDataRegion implements BoardingState {
  const factory HasDataRegion({required final List<FieldUiModel> data}) =
      _$HasDataRegion;

  List<FieldUiModel> get data;
  @JsonKey(ignore: true)
  _$$HasDataRegionCopyWith<_$HasDataRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasDataCityCopyWith<$Res> {
  factory _$$HasDataCityCopyWith(
          _$HasDataCity value, $Res Function(_$HasDataCity) then) =
      __$$HasDataCityCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldUiModel> data});
}

/// @nodoc
class __$$HasDataCityCopyWithImpl<$Res>
    extends _$BoardingStateCopyWithImpl<$Res, _$HasDataCity>
    implements _$$HasDataCityCopyWith<$Res> {
  __$$HasDataCityCopyWithImpl(
      _$HasDataCity _value, $Res Function(_$HasDataCity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HasDataCity(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FieldUiModel>,
    ));
  }
}

/// @nodoc

class _$HasDataCity implements HasDataCity {
  const _$HasDataCity({required final List<FieldUiModel> data}) : _data = data;

  final List<FieldUiModel> _data;
  @override
  List<FieldUiModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BoardingState.hasDataCity(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasDataCity &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasDataCityCopyWith<_$HasDataCity> get copyWith =>
      __$$HasDataCityCopyWithImpl<_$HasDataCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isEnabled) validateForm,
    required TResult Function(List<FieldUiModel> data) hasDataRegion,
    required TResult Function(List<FieldUiModel> data) hasDataCity,
  }) {
    return hasDataCity(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isEnabled)? validateForm,
    TResult? Function(List<FieldUiModel> data)? hasDataRegion,
    TResult? Function(List<FieldUiModel> data)? hasDataCity,
  }) {
    return hasDataCity?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isEnabled)? validateForm,
    TResult Function(List<FieldUiModel> data)? hasDataRegion,
    TResult Function(List<FieldUiModel> data)? hasDataCity,
    required TResult orElse(),
  }) {
    if (hasDataCity != null) {
      return hasDataCity(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidateForm value) validateForm,
    required TResult Function(HasDataRegion value) hasDataRegion,
    required TResult Function(HasDataCity value) hasDataCity,
  }) {
    return hasDataCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidateForm value)? validateForm,
    TResult? Function(HasDataRegion value)? hasDataRegion,
    TResult? Function(HasDataCity value)? hasDataCity,
  }) {
    return hasDataCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidateForm value)? validateForm,
    TResult Function(HasDataRegion value)? hasDataRegion,
    TResult Function(HasDataCity value)? hasDataCity,
    required TResult orElse(),
  }) {
    if (hasDataCity != null) {
      return hasDataCity(this);
    }
    return orElse();
  }
}

abstract class HasDataCity implements BoardingState {
  const factory HasDataCity({required final List<FieldUiModel> data}) =
      _$HasDataCity;

  List<FieldUiModel> get data;
  @JsonKey(ignore: true)
  _$$HasDataCityCopyWith<_$HasDataCity> get copyWith =>
      throw _privateConstructorUsedError;
}
