import 'package:coffe_ui/core/services/repositories/base_repository.dart';

import '../../models/src/user_model/user_model.dart';
import '../network/base/abstract_dio_manager.dart';
import '../network/base/app_dio_manager.dart';
import '../network/constants/app_endpoint.dart';

class AuthRepository extends BaseRepository{

  Future<ApiResponse<Map<String,dynamic>>> login(String email,String password)async {
    return api.post<Map<String,dynamic>>(
        ApiEndPoints.login,
        {
          "email": email,
          "password": password
        },
            (json) => json as Map<String,dynamic>
    );
  }

  Future<ApiResponse<UserModel>> getUserData(int id)async{
    return api.get("${ApiEndPoints.user}/$id",(json)=> UserModel.fromJson(json as Map<String,dynamic>));
  }
  Future<ApiResponse<Map<String,dynamic>>> createAccount(UserModel user) {
    return api.post<Map<String,dynamic>>(
        ApiEndPoints.signUp,
        {
          "name": user.name,
          "email": user.email,
          "password": user.password,
          "role": user.role
        },
            (json) => json as Map<String,dynamic>
    );
  }

}