import 'package:mime_types/mime_types.dart' as mime;

main() {
    print(mime.extension('image/jpeg'));  // jpeg
    print(mime.extension('application/pdf'));  // pdf

    print(mime.contentType('jpg'));  // image/jpeg
    print(mime.contentType('pdf'));  // application/pdf
    print(mime.contentType('/path/to/file.txt'));  // text/plain
}
