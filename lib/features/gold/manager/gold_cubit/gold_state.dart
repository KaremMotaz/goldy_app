part of 'gold_cubit.dart';

@freezed
class GoldState with _$GoldState {
  const factory GoldState.initial() = _Initial;
  const factory GoldState.loading() = _Loading;
  const factory GoldState.loaded(MetalModel data) = _Loaded;
  const factory GoldState.error(ApiErrorModel error) = _Error;
}
