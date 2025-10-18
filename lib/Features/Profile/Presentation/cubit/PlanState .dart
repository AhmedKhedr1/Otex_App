import 'package:otex_app/Features/Profile/data/models/PlanModel .dart';

abstract class PlanState {}

class PlanInitial extends PlanState {}

class PlanLoading extends PlanState {}

class PlanLoaded extends PlanState {
  final List<PlanModel> plans;
  PlanLoaded(this.plans);
}

class PlanError extends PlanState {
  final String message;
  PlanError(this.message);
}
