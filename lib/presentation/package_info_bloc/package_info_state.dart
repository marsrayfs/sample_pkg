// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'package_info_bloc.dart';

abstract class PackageInfoState extends Equatable {
  const PackageInfoState();

  @override
  List<Object> get props => [];
}

class PackageInfoInitial extends PackageInfoState {}

class Loading extends PackageInfoInitial {}

class SuccessEvent extends PackageInfoInitial {
  final PackageInfo success;
  SuccessEvent({
    required this.success,
  });
  @override
  List<Object> get props => [success];
}

class FailedEvent extends PackageInfoInitial {
  final Failure failure;
  FailedEvent({
    required this.failure,
  });
  @override
  List<Object> get props => [failure];
}
