// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterStates {
  int get counter => throw _privateConstructorUsedError;
  int get newCounterValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStatesCopyWith<CounterStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStatesCopyWith<$Res> {
  factory $CounterStatesCopyWith(
          CounterStates value, $Res Function(CounterStates) then) =
      _$CounterStatesCopyWithImpl<$Res, CounterStates>;
  @useResult
  $Res call({int counter, int newCounterValue});
}

/// @nodoc
class _$CounterStatesCopyWithImpl<$Res, $Val extends CounterStates>
    implements $CounterStatesCopyWith<$Res> {
  _$CounterStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? newCounterValue = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      newCounterValue: null == newCounterValue
          ? _value.newCounterValue
          : newCounterValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CounterStatesCopyWith<$Res>
    implements $CounterStatesCopyWith<$Res> {
  factory _$$_CounterStatesCopyWith(
          _$_CounterStates value, $Res Function(_$_CounterStates) then) =
      __$$_CounterStatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, int newCounterValue});
}

/// @nodoc
class __$$_CounterStatesCopyWithImpl<$Res>
    extends _$CounterStatesCopyWithImpl<$Res, _$_CounterStates>
    implements _$$_CounterStatesCopyWith<$Res> {
  __$$_CounterStatesCopyWithImpl(
      _$_CounterStates _value, $Res Function(_$_CounterStates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? newCounterValue = null,
  }) {
    return _then(_$_CounterStates(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      newCounterValue: null == newCounterValue
          ? _value.newCounterValue
          : newCounterValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CounterStates implements _CounterStates {
  const _$_CounterStates(
      {required this.counter, required this.newCounterValue});

  @override
  final int counter;
  @override
  final int newCounterValue;

  @override
  String toString() {
    return 'CounterStates(counter: $counter, newCounterValue: $newCounterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterStates &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.newCounterValue, newCounterValue) ||
                other.newCounterValue == newCounterValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, newCounterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterStatesCopyWith<_$_CounterStates> get copyWith =>
      __$$_CounterStatesCopyWithImpl<_$_CounterStates>(this, _$identity);
}

abstract class _CounterStates implements CounterStates {
  const factory _CounterStates(
      {required final int counter,
      required final int newCounterValue}) = _$_CounterStates;

  @override
  int get counter;
  @override
  int get newCounterValue;
  @override
  @JsonKey(ignore: true)
  _$$_CounterStatesCopyWith<_$_CounterStates> get copyWith =>
      throw _privateConstructorUsedError;
}
