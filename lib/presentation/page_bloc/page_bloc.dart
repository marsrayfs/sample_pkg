import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  final int max;
  final int min;
  int index = 0;

  PageBloc(this.max, this.min) : super(PageInitial()) {
    on<Next>((event, emit) {
      index++;
      if (index < max) {
        emit(Moving(index));
      } else {
        index = max;
        emit(NoChange());
      }
    });
    on<Previous>((event, emit) {
      index--;
      if (index > min) {
        emit(Moving(index));
      } else {
        index = min;
        emit(NoChange());
      }
    });
  }
}
