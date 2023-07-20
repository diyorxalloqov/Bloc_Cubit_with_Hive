// ignore_for_file: must_be_immutable

import 'package:bloc/bloc.dart';
import 'package:bloc_cubit_with_hive/db/DbService.dart';
import 'package:bloc_cubit_with_hive/model/Model.dart';
import 'package:bloc_cubit_with_hive/service/Service.dart';
import 'package:equatable/equatable.dart';

part 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserInitialState extends UserState {
  const UserInitialState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoadingState extends UserState {
  UserLoadingState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserErrorState extends UserState {
  String errorMessage;
  UserErrorState(this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}

class UserCompleteState extends UserState {
  Model model;
  UserCompleteState(this.model);

  @override
  // TODO: implement props
  List<Object?> get props => [model];
}
