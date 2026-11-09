import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/button/logic/status_buttons_cubit.dart';
import 'package:flutty_ds/theme/color/custom_colors.dart';

/// Lifecycle states of a [StatusButton] action.
enum ActionStatus {
  /// Idle, the action has not run yet.
  none,

  /// The action is currently running.
  testing,

  /// The action completed successfully.
  success,

  /// The action failed.
  error,
}

/// Button that runs an async [action] and reflects its status (loading,
/// success or error) through its icon.
class StatusButton extends StatelessWidget {
  /// Creates a [StatusButton].
  ///
  /// When [actionOnInit] is `true`, the action starts as soon as the button is
  /// built.
  const StatusButton({
    required this.action,
    required this.label,
    this.actionOnInit = false,
    super.key,
  });

  /// Async action run when the button is pressed; `true` means success.
  final Future<bool> Function() action;

  /// Whether to run [action] automatically when the button is first built.
  final bool actionOnInit;

  /// Label displayed inside the button.
  final String label;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StatusButtonCubit>(
      create: (_) =>
          StatusButtonCubit(action: action)..init(actionOnInit: actionOnInit),
      child: BlocBuilder<StatusButtonCubit, ActionStatus>(
        builder: (context, state) {
          return ElevatedButton.icon(
            onPressed: () => context.read<StatusButtonCubit>().onPressed(),
            icon: switch (state) {
              ActionStatus.none => const Icon(Icons.sync),
              ActionStatus.testing => const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              ActionStatus.success => const Icon(
                Icons.check_circle,
                color: CustomColors.success,
              ),
              ActionStatus.error => const Icon(
                Icons.error,
                color: CustomColors.error,
              ),
            },
            label: Text(label),
          );
        },
      ),
    );
  }
}
