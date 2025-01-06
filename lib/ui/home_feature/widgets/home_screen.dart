import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/models/task/task_summary.dart';
import '../../core/themes/colours.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/app_bar_widget.dart';
import '../../core/ui/bottom_navigation_bar_widget.dart';
import '../view_model/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListenableBuilder(
            listenable: viewModel,
            builder: (context, _) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimens
                            .of(context)
                            .paddingScreenVertical,
                        horizontal: Dimens
                            .of(context)
                            .paddingScreenHorizontal,
                      ),
                      child: Text(
                          'Yes Dear!'), //HomeHeader(viewModel: widget.viewModel),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: viewModel.tasks.length,
                    itemBuilder: (_, index) =>
                        _TaskSummary(
                            key: ValueKey(viewModel.tasks[index].id),
                            task: viewModel.tasks[index],
                          confirmDismiss: (_) async {
                            // wait for command to complete
                            await viewModel.deleteTask.execute(
                              checkNull(viewModel.tasks[index].id),
                            );
                            // if command completed successfully, return true
                            if (viewModel.deleteTask.completed) {
                              // removes the dismissible from the list
                              return true;
                            } else {
                              // the dismissible stays in the list
                              return false;
                            }
                          },
                        ),
                  ),
                ],
              );
            }
        ),
      ),
    );
  }

  int checkNull(int? id) {
    if (id == null) {
      return 0;
    } else {
      return id;
    }
  }
}

class _TaskSummary extends StatelessWidget {
  const _TaskSummary({
    super.key,
    required this.task,
    required this.confirmDismiss,
  });

  final TaskSummary task;
  final ConfirmDismissCallback confirmDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(task.id),
      direction: DismissDirection.endToStart,
      onDismissed: confirmDismiss,
      background: Container(
        color: AppColors.grey1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: Dimens.paddingHorizontal),
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
      child: InkWell(
        //onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens
                .of(context)
                .paddingScreenHorizontal,
            vertical: Dimens.paddingVertical,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.description,
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
              ),
              Text(
                //dateFormatStartEnd(
                //  DateTimeRange(
                //    start: booking.startDate,
                //    end: booking.endDate,
                //  ),
                task.createDate.toString(),
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}