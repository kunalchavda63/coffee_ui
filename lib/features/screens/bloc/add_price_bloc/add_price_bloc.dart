import 'package:coffe_ui/features/screens/bloc/add_price_bloc/add_price_event.dart';
import 'package:coffe_ui/features/screens/bloc/add_price_bloc/add_price_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPriceBloc extends Bloc<AddPriceEvent,AddPriceState>{
  AddPriceBloc(): super(AddPriceInitial());
}