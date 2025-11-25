
import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/network/base/abstract_dio_manager.dart';
import 'package:coffe_ui/core/services/network/base/app_dio_manager.dart';
import 'package:coffe_ui/core/services/network/constants/app_endpoint.dart';
import 'package:coffe_ui/core/services/repositories/base_repository.dart';
import 'package:coffe_ui/core/utilities/utils.dart';

class AuthRepository extends BaseRepository{

  Future<ApiResponse<Map<String,dynamic>>> login(String email,String password)async {
    return api.post<Map<String,dynamic>>(
        ApiEndPoints.login,
        {
          'email': email,
          'password': password,
        },
            (json) => json as Map<String,dynamic>,
    );
  }

  Future<ApiResponse<UserModel>> getUserData(int id)async{
    logger.i(id.toString());
    return api.get('${ApiEndPoints.user}/$id',(json)=> UserModel.fromJson(json as Map<String,dynamic>));
  }
  Future<ApiResponse<Map<String,dynamic>>> createAccount(UserModel user)async {
    final jsonData = user.toJson();
    logger.i(jsonData);
    return api.post<Map<String,dynamic>>(
        ApiEndPoints.signUp,
        jsonData,
            (json) => json as Map<String,dynamic>,
    );
  }

}