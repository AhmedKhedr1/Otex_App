import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Plan_Card.dart';
import 'package:otex_app/Features/Profile/Presentation/cubit/PlanCubit%20.dart';
import 'package:otex_app/Features/Profile/Presentation/cubit/PlanState%20.dart';


class PlansSection extends StatelessWidget {
  PlansSection({super.key});

  @override
  Widget build(BuildContext context) {
 
    return BlocProvider(
      create: (_) => PlanCubit()..loadPlans(),
      child: BlocBuilder<PlanCubit, PlanState>(
        builder: (context, state) {
          if (state is PlanLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PlanLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                state.plans.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12).r,
                  child: PlanCard(planModel: state.plans[index]),
                ),
              ),
            );
          } else if (state is PlanError) {
            return Center(child: Text(state.message));
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
