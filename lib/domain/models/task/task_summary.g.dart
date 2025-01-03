// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskSummaryImpl _$$TaskSummaryImplFromJson(Map<String, dynamic> json) =>
    _$TaskSummaryImpl(
      id: (json['id'] as num?)?.toInt(),
      createDate: DateTime.parse(json['createDate'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TaskSummaryImplToJson(_$TaskSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createDate': instance.createDate.toIso8601String(),
      'description': instance.description,
    };
