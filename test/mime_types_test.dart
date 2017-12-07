import 'package:mime_types/mime_types.dart' as mime;
import 'package:test/test.dart';

void main() {
    Map checks = {
        'pdf': 'application/pdf',
        'jpeg': 'image/jpeg',
        'png': 'image/png',
        'gif': 'image/gif',
        'docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        'txt': 'text/plain',
        'js': 'application/javascript',
        'css': 'text/css'
    };

    group('content type to extension', () {
        test('valid extension is returned', () {
            checks.forEach((extension, contentType) {
                expect(mime.extension(contentType), equals(extension));
            });
        });

        test('no extension is returned', () {
            expect(mime.extension('Not a content type'), isNull);
            expect(mime.extension('not/content-type'), isNull);
        });
    });

    group('extension to content type', () {
        test('valid content type is returned', () {
            checks['JPG'] = 'image/jpeg';
            checks.forEach((extension, contentType) {
                expect(mime.contentType(extension), equals(contentType));
            });
        });

        test('valid content type is returned for path', () {
            Map paths = {
                'image.jpg': 'image/jpeg',
                'image.JPEG': 'image/jpeg',
                '/path/to/image.png': 'image/png',
                'file.name.pdf': 'application/pdf',
                'file.DaRT': 'application/dart',
                'file.c': 'text/x-c',
                'doc.docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
            };
            paths.forEach((file, contentType) {
                expect(mime.contentType(file), equals(contentType));
            });
        });

        test('no content type is returned', () {
            expect(mime.extension('Not an extension'), isNull);
            expect(mime.extension('file.not-extension'), isNull);
        });
    });
}
