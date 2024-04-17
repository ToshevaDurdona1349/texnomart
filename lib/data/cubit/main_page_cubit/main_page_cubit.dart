import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageState());
  void isIndex( int index){
    emit(state.copyWith(indexCo: index));
  }
}
