import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:my_map/network/time_api.dart';

class TimeBloc extends Bloc<void, String> {
  TimeBloc() : super('--:--:--') {
    TimeApi.getLastTime().then((time) => add(time));
  }

  Future<void> fetchTime() async {
    final time = await TimeApi.fetchTime();
    add(time);
  }

  @override
  Stream<String> mapEventToState(String event) async* {
    await TimeApi.saveTime(event);
    yield event;
  }

  @override
  void onTransition(Transition<void, String> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }


}