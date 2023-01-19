library standalone_pkg;

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:standalone_pkg/data/datasource/file_upload/file_upload_datasource.dart';
import 'package:standalone_pkg/util/result.dart';

class FirebaseFileUploadDataSource implements FileUploadDataSource {
  @override
  Future<Result> upload(
    File file,
    String path,
  ) async {
    try {
      Reference reference = FirebaseStorage.instance.ref().child(path);
      await reference.putFile(File(file.path));
      await reference.getDownloadURL().then((imageUrl) async {
        return Success(data: imageUrl);
      });
    } catch (e) {
      return Failure(e);
    }
    return Failure("Upload Failed");
  }
}
