import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/Features/Profile/Presentation/cubit/PlanState%20.dart';
import 'package:otex_app/Features/Profile/data/datasource/plan_local_datasource.dart';

import 'package:otex_app/Features/Profile/data/models/PlanModel .dart';

class PlanCubit extends Cubit<PlanState> {
  PlanCubit() : super(PlanInitial());

  Future<void> loadPlans() async {
    try {
      emit(PlanLoading());
      final plans = await PlanLocalDataSource.getPlans();
      emit(PlanLoaded(plans));
    } catch (e) {
      emit(PlanError('Error loading plans: $e'));
    }
  }

  Future<void> addPlan(PlanModel plan) async {
    try {
      await PlanLocalDataSource.insertPlan(plan);
      await loadPlans(); // refresh after insert
    } catch (e) {
      emit(PlanError('Error inserting plan: $e'));
    }
  }
}
