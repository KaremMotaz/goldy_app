part of 'silver_cubit.dart';

@freezed
class SilverState with _$SilverState {
  const factory SilverState.initial() = _Initial;
  const factory SilverState.loading() = _Loading;
  const factory SilverState.loaded(MetalModel data) = _Loaded;
  const factory SilverState.error(ApiErrorModel error) = _Error;
}
