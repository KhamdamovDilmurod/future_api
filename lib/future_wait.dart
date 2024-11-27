
void main() async {
  final sw = Stopwatch()..start(); // 1
  // await doSomeImportantWork();
  // await doSomeImportantWork();
  // await doSomeImportantWork();

  await Future.wait([
    doSomeImportantWork(),
    doSomeImportantWork(),
    doSomeImportantWork(),
  ]);
  sw.stop();
  print('Total time: ${sw.elapsedMilliseconds}ms'); // 2
}
Future<void> doSomeImportantWork() async {
  await Future.delayed(Duration(seconds: 3));
  print('Important work done');
}