// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dashboard_info_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardInfoBoxTearOff {
  const _$DashboardInfoBoxTearOff();

  _DashboardInfoBox call(
      {required String title,
      required String subtitle,
      required String routeName}) {
    return _DashboardInfoBox(
      title: title,
      subtitle: subtitle,
      routeName: routeName,
    );
  }
}

/// @nodoc
const $DashboardInfoBox = _$DashboardInfoBoxTearOff();

/// @nodoc
mixin _$DashboardInfoBox {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get routeName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardInfoBoxCopyWith<DashboardInfoBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardInfoBoxCopyWith<$Res> {
  factory $DashboardInfoBoxCopyWith(
          DashboardInfoBox value, $Res Function(DashboardInfoBox) then) =
      _$DashboardInfoBoxCopyWithImpl<$Res>;
  $Res call({String title, String subtitle, String routeName});
}

/// @nodoc
class _$DashboardInfoBoxCopyWithImpl<$Res>
    implements $DashboardInfoBoxCopyWith<$Res> {
  _$DashboardInfoBoxCopyWithImpl(this._value, this._then);

  final DashboardInfoBox _value;
  // ignore: unused_field
  final $Res Function(DashboardInfoBox) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? routeName = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      routeName: routeName == freezed
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DashboardInfoBoxCopyWith<$Res>
    implements $DashboardInfoBoxCopyWith<$Res> {
  factory _$DashboardInfoBoxCopyWith(
          _DashboardInfoBox value, $Res Function(_DashboardInfoBox) then) =
      __$DashboardInfoBoxCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subtitle, String routeName});
}

/// @nodoc
class __$DashboardInfoBoxCopyWithImpl<$Res>
    extends _$DashboardInfoBoxCopyWithImpl<$Res>
    implements _$DashboardInfoBoxCopyWith<$Res> {
  __$DashboardInfoBoxCopyWithImpl(
      _DashboardInfoBox _value, $Res Function(_DashboardInfoBox) _then)
      : super(_value, (v) => _then(v as _DashboardInfoBox));

  @override
  _DashboardInfoBox get _value => super._value as _DashboardInfoBox;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? routeName = freezed,
  }) {
    return _then(_DashboardInfoBox(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      routeName: routeName == freezed
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DashboardInfoBox implements _DashboardInfoBox {
  const _$_DashboardInfoBox(
      {required this.title, required this.subtitle, required this.routeName});

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String routeName;

  @override
  String toString() {
    return 'DashboardInfoBox(title: $title, subtitle: $subtitle, routeName: $routeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardInfoBox &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.routeName, routeName) ||
                const DeepCollectionEquality()
                    .equals(other.routeName, routeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(routeName);

  @JsonKey(ignore: true)
  @override
  _$DashboardInfoBoxCopyWith<_DashboardInfoBox> get copyWith =>
      __$DashboardInfoBoxCopyWithImpl<_DashboardInfoBox>(this, _$identity);
}

abstract class _DashboardInfoBox implements DashboardInfoBox {
  const factory _DashboardInfoBox(
      {required String title,
      required String subtitle,
      required String routeName}) = _$_DashboardInfoBox;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  String get routeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardInfoBoxCopyWith<_DashboardInfoBox> get copyWith =>
      throw _privateConstructorUsedError;
}
