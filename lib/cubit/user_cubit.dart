part of 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitialState()) {
    getUser();
  }
  Service service = Service();
  DBService dbService = DBService();

  //logic

  Future<void> getUser() async {
    emit(UserLoadingState());
    dynamic response = await dbService.checkData();
    if (response is Model) {
      emit(UserCompleteState(response));
    } else {
      emit(UserErrorState(response));
    }
  }
}
