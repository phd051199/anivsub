import 'package:anivsub/domain/domain_exports.dart';

abstract class HomeRepository {
  Future<HomeDataCategoriesEntity> fetchHomeData();
}
