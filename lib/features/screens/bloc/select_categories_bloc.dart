import 'package:coffe_ui/features/screens/bloc/select_categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCategoriesCubit extends Cubit<SelectCategoriesState>{
  SelectCategoriesCubit(): super(SelectCategoriesState(0));

  void updateIndex(int index){
    emit(SelectCategoriesState(index));
  }

}