import 'package:standalone_pkg/data/datasource/package_info/package_info_datasource.dart';
import 'package:standalone_pkg/util/result.dart';

abstract class PackageInfoRepository {
  final PackageInfoDataSource dataSource;
  PackageInfoRepository(this.dataSource);
  Future<Result> getPackageInfo();
}
