T measureExecutionTime<T>(T Function(List<int>) function, List<int> list, String label) {
  final stopwatch = Stopwatch()..start();  
  T result = function(list);               
  stopwatch.stop();                       
  print('$label - Waktu eksekusi: ${stopwatch.elapsedMilliseconds} ms');
  return result;                          
}
