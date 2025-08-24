import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/presentation/cubit/cubit_base.dart';

part 'main_page_state.dart';
part 'main_page_cubit.freezed.dart';

class MainPageCubit extends CubitBase<MainPageState>{
  MainPageCubit():super(MainPageState.created());

}