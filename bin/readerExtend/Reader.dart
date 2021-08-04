import 'dart:io';

abstract class Reader {
bool fileExists(String path) {
// code...
return true;
}
double size(File file) {
// code...
return 2.5;
}
String readContents();
}