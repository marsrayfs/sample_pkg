import 'dart:io';

import 'package:standalone_pkg/data/datasource/file_upload/firebase_file_upload_datasource.dart';
import 'package:standalone_pkg/data/repository/file_upload_repository.dart';
import 'package:standalone_pkg/util/result.dart';

class FirebaseFileUploadRepositoryImpl extends FileUploadRepository {
  FirebaseFileUploadRepositoryImpl() : super(FirebaseFileUploadDataSource());

  @override
  Future<Result> upload(File file, String path) {
    return dataSource.upload(file, path);
  }
}
