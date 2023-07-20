import 'package:bloc_cubit_with_hive/cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      bloc: UserCubit(),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text("Bloc/Cubit"),
        ),
        body: Builder(builder: (context) {
          if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.green),
            );
          } else if (state is UserErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is UserCompleteState) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.model.entries![index].aPI.toString()),
                  );
                },
                itemCount: state.model.entries!.length);
          } else {
            return const SizedBox.shrink();
          }
        }),
      ),
    );
  }
}
