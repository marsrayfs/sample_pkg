part of 'register_bloc.dart';

enum State {
  idle,
  loading,
  registered,
  failed,
}

class RegisterState extends Equatable {
  final State state;
  final Result? result;

  const RegisterState(this.state, this.result);
  factory RegisterState.initial() {
    return const RegisterState(State.idle, null);
  }
  @override
  List<Object?> get props => throw UnimplementedError();

  RegisterState copyWith({
    Result? result,
    State? state,
  }) {
    return RegisterState(
      state ?? this.state,
      result ?? this.result,
    );
  }
}
