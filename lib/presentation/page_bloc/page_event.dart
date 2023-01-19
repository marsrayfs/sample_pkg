part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class Next extends PageEvent {}

class Previous extends PageEvent {}

class Move extends PageEvent {
  final int index;
  const Move(this.index);
}
