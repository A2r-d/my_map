import 'package:workmanager/workmanager.dart';
import 'package:my_map/bloc/time_bloc.dart';

class TimeWorker {
  void registerTimeTask() {
    // print('debuging initing');
    Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: false,
    );
    Workmanager().registerPeriodicTask(
      'time_task',
      'time_task',
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(seconds: 10),
      // constraints: Constraints(
      //   networkType: NetworkType.connected,
      // ),
      existingWorkPolicy: ExistingWorkPolicy.replace,
    );
  }
}

Future<void> callbackDispatcher() async {
  for (int i = 0; i < 100; i++) {
    // print('debuging new i');
    await TimeBloc().fetchTime();
    await Future.delayed(Duration(seconds: 10));
  }
  Workmanager().executeTask((taskName, inputData) async {
    return Future.value(true);
  });
}
