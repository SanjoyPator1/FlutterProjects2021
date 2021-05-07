import 'dart:io';

//this file demonstrate futures, async and await

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2data = await task2();
  while(task2data != "demo") {
    task2data = await task2();
  }
  task3(task2data);
}

void task1() {
  // ignore: unused_local_variable
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  //sleep(threeSeconds);

  String result = "demo";

  Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String? task2Data) {
  // ignore: unused_local_variable
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
