library standalone_pkg;

import 'package:package_info_plus/package_info_plus.dart';
import 'package:standalone_pkg/data/datasource/package_info/package_info_datasource.dart';
import 'package:standalone_pkg/util/result.dart';

class PackageInfoPlusPackageInfoDataSource implements PackageInfoDataSource {
  @override
  Future<Result> getPackageInformation() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      return Success(data: packageInfo);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
