// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialization_name')
  String? get specializationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  dynamic get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'specialization_name') String? specializationName,
      @JsonKey(name: 'created_at') dynamic createdAt,
      @JsonKey(name: 'updated_at') dynamic updatedAt});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? specializationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationName: freezed == specializationName
          ? _value.specializationName
          : specializationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecializationImplCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$SpecializationImplCopyWith(_$SpecializationImpl value,
          $Res Function(_$SpecializationImpl) then) =
      __$$SpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'specialization_name') String? specializationName,
      @JsonKey(name: 'created_at') dynamic createdAt,
      @JsonKey(name: 'updated_at') dynamic updatedAt});
}

/// @nodoc
class __$$SpecializationImplCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$SpecializationImpl>
    implements _$$SpecializationImplCopyWith<$Res> {
  __$$SpecializationImplCopyWithImpl(
      _$SpecializationImpl _value, $Res Function(_$SpecializationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? specializationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SpecializationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationName: freezed == specializationName
          ? _value.specializationName
          : specializationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationImpl implements _Specialization {
  _$SpecializationImpl(
      {this.id,
      @JsonKey(name: 'specialization_name') this.specializationName,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SpecializationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'specialization_name')
  final String? specializationName;
  @override
  @JsonKey(name: 'created_at')
  final dynamic createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Specialization(id: $id, specializationName: $specializationName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.specializationName, specializationName) ||
                other.specializationName == specializationName) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      specializationName,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      __$$SpecializationImplCopyWithImpl<_$SpecializationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationImplToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  factory _Specialization(
      {final int? id,
      @JsonKey(name: 'specialization_name') final String? specializationName,
      @JsonKey(name: 'created_at') final dynamic createdAt,
      @JsonKey(name: 'updated_at')
      final dynamic updatedAt}) = _$SpecializationImpl;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$SpecializationImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'specialization_name')
  String? get specializationName;
  @override
  @JsonKey(name: 'created_at')
  dynamic get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
