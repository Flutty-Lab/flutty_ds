import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutty_ds/button/status_button.dart';

class StatusButtonCubit extends Cubit<ActionStatus> {
  StatusButtonCubit({required this.action}) : super(ActionStatus.none);

  Future<bool> Function() action;
  late StreamSubscription<bool> listener;

  void init({required bool actionOnInit}) {
    if (actionOnInit) {
      onPressed();
    }
  }

  Future<void> onPressed() async {
    if (state == ActionStatus.testing) {
      unawaited(listener.cancel());
      emit(ActionStatus.none);
      return;
    }

    emit(ActionStatus.testing);
    listener = execute().listen((result) {
      if (!isClosed) {
        emit(result ? ActionStatus.success : ActionStatus.error);
      }
    });
  }

  Stream<bool> execute() async* {
    yield await action.call();
  }
}
