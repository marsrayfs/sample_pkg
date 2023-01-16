part of 'sign_in_bloc.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignedInSuccess extends SignInState {
  const SignedInSuccess(this.result);

  final Result result;

  @override
  List<Object> get props => [result];
}

class ExceptionOccurred extends SignInState {
  const ExceptionOccurred(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
