import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldy/core/models/metal_model.dart';
import 'package:goldy/core/networking/api_error_model.dart';
import 'package:goldy/core/networking/api_result.dart';
import 'package:goldy/features/gold/data/gold_repo.dart';

part 'gold_state.dart';
part 'gold_cubit.freezed.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;
  GoldCubit({required this.goldRepo}) : super(GoldState.initial());

  Future<void> getGoldData() async {
    emit(const GoldState.loading());

    final ApiResult<MetalModel> result = await goldRepo.getGoldData();

    result.when(
      success: (data) {
        emit(GoldState.loaded(data));
      },
      failure: (error) {
        emit(GoldState.error(error));
      },
    );
  }
}
