part of 'lobby_page_cubit.dart';

@freezed
class LobbyPageState with _$LobbyPageState{
  const factory LobbyPageState.loading() = _Loading;
  const factory LobbyPageState.error(String message) = _Error;
  const factory LobbyPageState.success() = _Success;
}