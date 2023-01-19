part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {}

class Moving extends PageState {
  final int index;
  const Moving(this.index);
}

class NoChange extends PageState {}
