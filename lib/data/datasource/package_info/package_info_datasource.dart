library standalone_pkg;

import '../../../util/result.dart';

abstract class PackageInfoDataSource {
  Future<Result> getPackageInformation();
}
