import 'package:coffe_ui/core/models/src/post_model/post_model.dart';
import 'package:coffe_ui/core/services/network/base/abstract_dio_manager.dart';

import '../constants/app_endpoint.dart';

final api = HttpMethod();

Future<ApiResponse<PostModel>> fetchLocalDataList(int currentIndex) {
  return api.get<PostModel>(
    "${ApiEndPoints.localDataGet}/$currentIndex",
    (json) => PostModel.fromJson(json),
  );
}
