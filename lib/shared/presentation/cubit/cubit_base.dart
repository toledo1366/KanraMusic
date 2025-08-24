import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/navigation_service.dart';

class CubitBase<T> extends Cubit<T>{
  CubitBase(super.initialState);

  void navigate(String path){
    router.go(path);
  }
}