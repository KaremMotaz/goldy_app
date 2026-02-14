import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldy/core/models/metal_model.dart';
import 'package:goldy/core/networking/api_error_model.dart';
import 'package:goldy/core/networking/api_result.dart';
import 'package:goldy/features/silver/data/silver_repo.dart';

part 'silver_state.dart';
part 'silver_cubit.freezed.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;
  SilverCubit({required this.silverRepo}) : super(SilverState.initial());

  Future<void> getSilverData() async {
    emit(const SilverState.loading());

    final ApiResult<MetalModel> result = await silverRepo.getSilverData();

    result.when(
      success: (data) {
        emit(SilverState.loaded(data));
      },
      failure: (error) {
        emit(SilverState.error(error));
      },
    );
  }
}
