part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class NextEvent extends PageEvent {}

class PreviousEvent extends PageEvent {}

class MoveEvent extends PageEvent {
  final int index;
  const MoveEvent(this.index);
}
