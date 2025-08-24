import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanraa/shared/presentation/cubit/cubit_base.dart';

part 'lobby_page_state.dart';
part 'lobby_page_cubit.freezed.dart';

@injectable
class LobbyPageCubit extends CubitBase<LobbyPageState>{
  LobbyPageCubit() : super(const LobbyPageState.loading());



}