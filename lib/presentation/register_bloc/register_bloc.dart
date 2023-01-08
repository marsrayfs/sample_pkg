library standalone_pkg;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standalone_pkg/domain/usecase/register_usecase.dart';

import '../../util/result.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterBloc(this.registerUseCase) : super(RegisterState.initial()) {
    on<StartRegisterEvent>((event, emit) async {
      emit(state.copyWith(state: State.loading));
      var result = await registerUseCase.register(event.email, event.password);

      if (result is Success) {
        emit(state.copyWith(result: result, state: State.registered));
      } else {
        emit(state.copyWith(result: result, state: State.failed));
      }
    });
  }
}
