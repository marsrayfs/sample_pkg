part of 'package_info_bloc.dart';

abstract class PackageInfoEvent extends Equatable {
  const PackageInfoEvent();

  @override
  List<Object> get props => [];
}

class RequestEvent extends PackageInfoEvent {}
