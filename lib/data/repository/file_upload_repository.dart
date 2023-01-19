library standalone_pkg;

import 'dart:io';

import 'package:standalone_pkg/data/datasource/file_upload/file_upload_datasource.dart';

import '../../util/result.dart';

abstract class FileUploadRepository {
  final FileUploadDataSource dataSource;

  FileUploadRepository(this.dataSource);
  Future<Result> upload(
    File file,
    String path,
  );
}
