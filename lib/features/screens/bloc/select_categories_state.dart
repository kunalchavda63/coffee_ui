import 'package:equatable/equatable.dart';

class SelectCategoriesState extends Equatable{
  final int currentIndex;
  const SelectCategoriesState(this.currentIndex);

  @override
  List<Object?> get props => [currentIndex];

}