library standalone_pkg;

import 'dart:io';

import '../../../util/result.dart';

abstract class FileUploadDataSource {
  Future<Result> upload(
    File file,
    String path,
  );
}
