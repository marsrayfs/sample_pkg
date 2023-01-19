import 'package:standalone_pkg/data/repository/package_info_repository.dart';
import 'package:standalone_pkg/util/result.dart';

class GetPackageInfoUseCase {
  final PackageInfoRepository repository;

  GetPackageInfoUseCase(this.repository);

  Future<Result> getPackageInfo() async {
    return repository.getPackageInfo();
  }
}
