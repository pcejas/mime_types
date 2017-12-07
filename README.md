# mime_types 

[![Build Status](https://travis-ci.org/tmannherz/mime_types.svg?branch=master)](https://travis-ci.org/tmannherz/mime_types)

A Dart helper-package for working MIME and content types.

It differs from Google's [MIME package][pub_mime] in two main ways:
1. Content type lookup doesn't take file contents (magic bytes) into account - it's purely based on an extension or file name.
1. The library provides both content type-to-extension AND extension-to-content type mapping.

MIME/content type database from https://github.com/jshttp/mime-db

## Usage

```dart
import 'package:mime_types/mime_types.dart' as mime;

main() {
    print(mime.extension('image/jpeg'));  // jpeg
    print(mime.extension('application/pdf'));  // pdf
    
    print(mime.contentType('jpg'));  // image/jpeg
    print(mime.contentType('pdf'));  // application/pdf
    print(mime.contentType('/path/to/file.txt'));  // text/plain
}
```

## Running tests

`pub run test test`

[pub_mime]: https://github.com/dart-lang/mime
