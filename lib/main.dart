import 'package:bloc_cubit_with_hive/cubit/user_state.dart';
import 'package:bloc_cubit_with_hive/db/DbService.dart';
import 'package:bloc_cubit_with_hive/ui/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  DBService.registerAdapter();
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserCubit())],
      child: const Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
