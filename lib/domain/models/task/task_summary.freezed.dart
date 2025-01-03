// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskSummary _$TaskSummaryFromJson(Map<String, dynamic> json) {
  return _TaskSummary.fromJson(json);
}

/// @nodoc
mixin _$TaskSummary {
  /// Optional ID of the task.
  /// May be null if the task is not yet stored.
  int? get id => throw _privateConstructorUsedError;

  /// Date task was created
  DateTime get createDate => throw _privateConstructorUsedError;

  /// task description
  String get description => throw _privateConstructorUsedError;

  /// Serializes this TaskSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskSummaryCopyWith<TaskSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSummaryCopyWith<$Res> {
  factory $TaskSummaryCopyWith(
          TaskSummary value, $Res Function(TaskSummary) then) =
      _$TaskSummaryCopyWithImpl<$Res, TaskSummary>;
  @useResult
  $Res call({int? id, DateTime createDate, String description});
}

/// @nodoc
class _$TaskSummaryCopyWithImpl<$Res, $Val extends TaskSummary>
    implements $TaskSummaryCopyWith<$Res> {
  _$TaskSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createDate = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskSummaryImplCopyWith<$Res>
    implements $TaskSummaryCopyWith<$Res> {
  factory _$$TaskSummaryImplCopyWith(
          _$TaskSummaryImpl value, $Res Function(_$TaskSummaryImpl) then) =
      __$$TaskSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, DateTime createDate, String description});
}

/// @nodoc
class __$$TaskSummaryImplCopyWithImpl<$Res>
    extends _$TaskSummaryCopyWithImpl<$Res, _$TaskSummaryImpl>
    implements _$$TaskSummaryImplCopyWith<$Res> {
  __$$TaskSummaryImplCopyWithImpl(
      _$TaskSummaryImpl _value, $Res Function(_$TaskSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createDate = null,
    Object? description = null,
  }) {
    return _then(_$TaskSummaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskSummaryImpl implements _TaskSummary {
  const _$TaskSummaryImpl(
      {this.id, required this.createDate, required this.description});

  factory _$TaskSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskSummaryImplFromJson(json);

  /// Optional ID of the task.
  /// May be null if the task is not yet stored.
  @override
  final int? id;

  /// Date task was created
  @override
  final DateTime createDate;

  /// task description
  @override
  final String description;

  @override
  String toString() {
    return 'TaskSummary(id: $id, createDate: $createDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createDate, description);

  /// Create a copy of TaskSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSummaryImplCopyWith<_$TaskSummaryImpl> get copyWith =>
      __$$TaskSummaryImplCopyWithImpl<_$TaskSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskSummaryImplToJson(
      this,
    );
  }
}

abstract class _TaskSummary implements TaskSummary {
  const factory _TaskSummary(
      {final int? id,
      required final DateTime createDate,
      required final String description}) = _$TaskSummaryImpl;

  factory _TaskSummary.fromJson(Map<String, dynamic> json) =
      _$TaskSummaryImpl.fromJson;

  /// Optional ID of the task.
  /// May be null if the task is not yet stored.
  @override
  int? get id;

  /// Date task was created
  @override
  DateTime get createDate;

  /// task description
  @override
  String get description;

  /// Create a copy of TaskSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSummaryImplCopyWith<_$TaskSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
