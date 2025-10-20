import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/user_entity.dart';
import '../../../../domain/results/user/user_info_result.dart';
import '../../../../domain/usecases/get_user_info_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserInfoUseCase getUserInfoUseCase;

  HomeBloc({
    required this.getUserInfoUseCase,
  }) : super(HomeInitial()) {
    on<LoadHomeData>(_onLoadHomeData);
    on<RefreshHomeData>(_onRefreshHomeData);
  }

  Future<void> _onLoadHomeData(
      LoadHomeData event,
      Emitter<HomeState> emit,
      ) async {
    emit(HomeLoading());

    try {
      final userInfoResult = await getUserInfoUseCase();

      if (userInfoResult is UserInfoSuccess) {
        emit(HomeLoaded(
          userInfo: userInfoResult.user,
          unreadNotificationsCount: 0,
        ));
      } else if (userInfoResult is UserInfoError) {
        emit(HomeError(userInfoResult.message));
      }
    } catch (e) {
      emit(HomeError('Gagal memuat data: ${e.toString()}'));
    }
  }

  Future<void> _onRefreshHomeData(
      RefreshHomeData event,
      Emitter<HomeState> emit,
      ) async {
    final currentState = state;

    try {
      final userInfoResult = await getUserInfoUseCase();

      if (userInfoResult is UserInfoSuccess) {
        emit(HomeLoaded(
          userInfo: userInfoResult.user,
          unreadNotificationsCount: 0,
        ));
      } else if (userInfoResult is UserInfoError) {
        // Jika refresh gagal, pertahankan state sebelumnya
        if (currentState is HomeLoaded) {
          emit(currentState);
        } else {
          emit(HomeError(userInfoResult.message));
        }
      }
    } catch (e) {
      // Jika terjadi exception, pertahankan state sebelumnya
      if (currentState is HomeLoaded) {
        emit(currentState);
      } else {
        emit(HomeError('Gagal memperbarui data: ${e.toString()}'));
      }
    }
  }
}