import 'package:standalone_pkg/data/datasource/package_info/package_info_plus_package_info_datasource.dart';
import 'package:standalone_pkg/data/repository/package_info_repository.dart';
import 'package:standalone_pkg/util/result.dart';

class PlusPackageInfoRespositoryImpl extends PackageInfoRepository {
  PlusPackageInfoRespositoryImpl()
      : super(PackageInfoPlusPackageInfoDataSource());

  @override
  Future<Result> getPackageInfo() async {
    return dataSource.getPackageInformation();
  }
}
