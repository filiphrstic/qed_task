// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unicorn_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Unicorn _$UnicornFromJson(Map<String, dynamic> json) {
  return _Unicorn.fromJson(json);
}

/// @nodoc
mixin _$Unicorn {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  set age(int? value) => throw _privateConstructorUsedError;
  String? get colour => throw _privateConstructorUsedError;
  set colour(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnicornCopyWith<Unicorn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnicornCopyWith<$Res> {
  factory $UnicornCopyWith(Unicorn value, $Res Function(Unicorn) then) =
      _$UnicornCopyWithImpl<$Res, Unicorn>;
  @useResult
  $Res call({String? id, String? name, int? age, String? colour});
}

/// @nodoc
class _$UnicornCopyWithImpl<$Res, $Val extends Unicorn>
    implements $UnicornCopyWith<$Res> {
  _$UnicornCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? colour = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      colour: freezed == colour
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnicornCopyWith<$Res> implements $UnicornCopyWith<$Res> {
  factory _$$_UnicornCopyWith(
          _$_Unicorn value, $Res Function(_$_Unicorn) then) =
      __$$_UnicornCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, int? age, String? colour});
}

/// @nodoc
class __$$_UnicornCopyWithImpl<$Res>
    extends _$UnicornCopyWithImpl<$Res, _$_Unicorn>
    implements _$$_UnicornCopyWith<$Res> {
  __$$_UnicornCopyWithImpl(_$_Unicorn _value, $Res Function(_$_Unicorn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? colour = freezed,
  }) {
    return _then(_$_Unicorn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      colour: freezed == colour
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Unicorn implements _Unicorn {
  _$_Unicorn({this.id, this.name, this.age, this.colour});

  factory _$_Unicorn.fromJson(Map<String, dynamic> json) =>
      _$$_UnicornFromJson(json);

  @override
  String? id;
  @override
  String? name;
  @override
  int? age;
  @override
  String? colour;

  @override
  String toString() {
    return 'Unicorn(id: $id, name: $name, age: $age, colour: $colour)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnicornCopyWith<_$_Unicorn> get copyWith =>
      __$$_UnicornCopyWithImpl<_$_Unicorn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnicornToJson(
      this,
    );
  }
}

abstract class _Unicorn implements Unicorn {
  factory _Unicorn({String? id, String? name, int? age, String? colour}) =
      _$_Unicorn;

  factory _Unicorn.fromJson(Map<String, dynamic> json) = _$_Unicorn.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  int? get age;
  set age(int? value);
  @override
  String? get colour;
  set colour(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_UnicornCopyWith<_$_Unicorn> get copyWith =>
      throw _privateConstructorUsedError;
}
