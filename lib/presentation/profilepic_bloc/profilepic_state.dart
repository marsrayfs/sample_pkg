part of 'profilepic_bloc.dart';

abstract class ProfilepicState extends Equatable {
  const ProfilepicState();

  @override
  List<Object> get props => [];
}

class ProfilepicInitial extends ProfilepicState {}

class ProfilepicUploading extends ProfilepicState {}

class ProfilpicSaved extends ProfilepicState {
  final Success result;
  const ProfilpicSaved(this.result);
  @override
  List<Object> get props => [result];
}

class ProfilepicFailedToSave extends ProfilepicState {
  final Failure failure;
  const ProfilepicFailedToSave(this.failure);
  @override
  List<Object> get props => [failure];
}
