import 'dart:io';

import 'package:standalone_pkg/data/repository/file_upload_repository.dart';
import 'package:standalone_pkg/data/repository/user_repository.dart';
import 'package:standalone_pkg/util/result.dart';

class SaveUserProfilePictureUseCase {
  final FileUploadRepository fileUploadRepository;
  final UserRepository userRepository;

  SaveUserProfilePictureUseCase(this.fileUploadRepository, this.userRepository);

  Future<Result> uploadProfilePhoto(File file) async {
    try {
      var uidResult = await userRepository.getUid();
      if (uidResult is Success) {
        String uid = uidResult.data as String;
        return fileUploadRepository.upload(
            file, "profilePhoto/$uid/profile.jpg");
      } else {
        return Failure("User not found");
      }
    } catch (e) {
      return Failure(e);
    }
  }
}
