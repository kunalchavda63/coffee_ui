import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCategoriesCubit extends Cubit<int>{
  SelectCategoriesCubit(): super(0);

  void updateIndex(int index){
    emit(index);
  }

}