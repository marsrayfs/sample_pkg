library standalone_pkg;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/sign_in_usecase.dart';
import '../../util/result.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase signInUseCase;

  SignInBloc(this.signInUseCase) : super(SignInInitial()) {
    on<LogIn>((event, emit) => _onSignIn(event, emit));
  }

  _onSignIn(LogIn event, Emitter<SignInState> emitter) async {
    emitter(SignInLoading());
    try {
      final result = await signInUseCase.signIn(event.email, event.password);
      emitter(SignedInSuccess(result));
    } catch (e) {
      emitter(ExceptionOccurred(e.toString()));
    }
  }
}
