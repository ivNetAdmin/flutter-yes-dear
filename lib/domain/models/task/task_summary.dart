import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_summary.freezed.dart';
part 'task_summary.g.dart';
//f

@freezed
class TaskSummary with _$TaskSummary {
  const factory TaskSummary({
    /// Optional ID of the task.
    /// May be null if the task is not yet stored.
    int? id,

    /// Date task was created
    required DateTime createDate,

    /// task description
     required String description,


  }) = _TaskSummary;

  factory TaskSummary.fromJson(Map<String, dynamic> json) =>
      _$TaskSummaryFromJson(json);

}