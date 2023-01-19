import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standalone_pkg/domain/usecase/save_user_profile_picture_use_case.dart';
import 'package:standalone_pkg/util/result.dart';

part 'profilepic_event.dart';
part 'profilepic_state.dart';

class ProfilepicBloc extends Bloc<ProfilepicEvent, ProfilepicState> {
  final SaveUserProfilePictureUseCase useCase;
  ProfilepicBloc(this.useCase) : super(ProfilepicInitial()) {
    on<UploadProfilepicEvent>((event, emit) async {
      emit(ProfilepicUploading());
      var result = await useCase.uploadProfilePhoto(event.file);
      if (result is Success) {
        emit(ProfilpicSaved(result));
      } else {
        emit(ProfilepicFailedToSave(result as Failure));
      }
    });
  }
}
