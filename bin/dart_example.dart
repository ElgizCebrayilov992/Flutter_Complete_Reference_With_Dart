import 'dart:io';

import 'dart:isolate';

main() {
  
  ServerSocket.bind(InternetAddress.ANY_IP_V4, 8080)
      .then((ServerSocket server) {
    // Create main ReceivePort
    ReceivePort receivePort = new ReceivePort();
    // Create as much isolates as possible
    for (int i = 0; i < Platform.numberOfProcessors; i++) {
      // Create isolate and run server task
      Isolate.spawn(runTask, receivePort.sendPort);
    }
    // Start listening messages from spawned isolates
    receivePort.listen((msg) {
      // Check what the kind of message we received
      if (msg is SendPort) {
        // There is hand-shaking message.
        // Let's send ServerSocketReference and port
        msg.send(new ServerTask(server.single, receivePort.sendPort));
      } else {
        // Usual string message from spawned isolates
        print(msg);
      }
    });
  });
}class ServerTask {
 ServerSocket reference;
 SendPort port;
 
 ServerTask(this.reference, this.port);
 
 execute() {
  
 // Create ServerSocket
 port.send()
 reference.create().then((serverSocket) {
 // Create HttpServer and start listening income HttpRequests
 new HttpServer.listenOn(serverSocket)
 .listen((HttpRequest request) {
 // Send requested path into main's ReceivePort
 port.send(request.uri.path);
 // Response back to client
 request.response.write("Hello, world");
 request.response.close();
 });
 });
 }
}
/*
void main() async {
final stream = RandomStream().stream;
await Future.delayed(const Duration(seconds: 5));
// The timer inside our 'RandomStream' is started
final subscription = stream.listen((int random) {
  print(random);
});
//await Future.delayed(const Duration(seconds: 10));
//subscription.cancel();

}
*/

// ignore: unused_element

/*

void main() async {
  // 1.
  final stream = randomNumbersStream(); // 2.
  await for (var value in stream) {
    // 3.
    print(value);
  }
  print("Async stream!");
}
*/

/*
void main() {
final stream = randomNumbersIterable();
for(var value in stream) {
print(value);
}
print('Sync stream!');
}

*/
/*
Future<void> main() async {
final stream = randomNumbersStream();
try {
await for(var value in stream) {
print(value);
}
}  catch (e) {
print("Whoops :(");
}
}
*/
