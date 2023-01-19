import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:standalone_pkg/domain/usecase/get_package_info_usecase.dart';
import 'package:standalone_pkg/util/result.dart';

part 'package_info_event.dart';
part 'package_info_state.dart';

class PackageInfoBloc extends Bloc<PackageInfoEvent, PackageInfoState> {
  final GetPackageInfoUseCase useCase;
  PackageInfoBloc(this.useCase) : super(PackageInfoInitial()) {
    on<RequestEvent>((event, emit) async {
      emit(Loading());
      Result result = await useCase.getPackageInfo();
      if (result is Success) {
        emit(SuccessEvent(success: result.data as PackageInfo));
      } else {
        emit(FailedEvent(failure: result as Failure));
      }
    });
  }
}
