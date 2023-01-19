part of 'profilepic_bloc.dart';

abstract class ProfilepicEvent extends Equatable {
  const ProfilepicEvent();

  @override
  List<Object> get props => [];
}

class UploadProfilepicEvent extends ProfilepicEvent {
  final File file;
  const UploadProfilepicEvent(this.file);
  @override
  List<Object> get props => [file];
}
