import 'dart:async';

main() {
  print('start');
  printFileContent();
  print('End');
}

printFileContent() async {
  Future<String> fileContent = (await downLoadFile()) as Future<String>;
  print('content-->$fileContent');
}

Future<String> downLoadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    return 'MY FILE';
  });
  return result;
}
