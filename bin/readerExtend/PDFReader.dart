import 'Reader.dart';

class PDFReader extends Reader {
  @override
  String readContents() {
   return "ff";
  }

  @override
  bool fileExists(String path) {
    // TODO: implement fileExists
    return super.fileExists(path);
  }
}