import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/user_entity.dart';
import '../../../../domain/usecases/get_user_info_usecase.dart';
import '../../../../domain/usecases/fetch_notifications_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserInfoUseCase getUserInfoUseCase;
  final FetchNotificationsUseCase fetchNotificationsUseCase;

  HomeBloc({
    required this.getUserInfoUseCase,
    required this.fetchNotificationsUseCase,
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
      // Load user info and notifications in parallel
      final results = await Future.wait([
        getUserInfoUseCase.execute(),
        fetchNotificationsUseCase.execute(),
      ]);

      final userInfoResult = results[0];
      final notificationsResult = results[1];

      UserEntity? userInfo;
      int unreadCount = 0;

      // Handle user info result
      if (userInfoResult.isRight()) {
        userInfo = userInfoResult.getOrElse(() => throw Exception());
      }

      // Handle notifications result
      if (notificationsResult.isRight()) {
        final notifications = notificationsResult.getOrElse(() => []);
        unreadCount = notifications.length;
      }

      emit(HomeLoaded(
        userInfo: userInfo,
        unreadNotificationsCount: unreadCount,
      ));
    } catch (e) {
      emit(HomeError('Gagal memuat data: ${e.toString()}'));
    }
  }

  Future<void> _onRefreshHomeData(
      RefreshHomeData event,
      Emitter<HomeState> emit,
      ) async {
    // Keep the current state while refreshing
    final currentState = state;

    try {
      final results = await Future.wait([
        getUserInfoUseCase.execute(),
        fetchNotificationsUseCase.execute(),
      ]);

      final userInfoResult = results[0];
      final notificationsResult = results[1];

      UserEntity? userInfo;
      int unreadCount = 0;

      if (userInfoResult.isRight()) {
        userInfo = userInfoResult.getOrElse(() => throw Exception());
      }

      if (notificationsResult.isRight()) {
        final notifications = notificationsResult.getOrElse(() => []);
        unreadCount = notifications.length;
      }

      emit(HomeLoaded(
        userInfo: userInfo,
        unreadNotificationsCount: unreadCount,
      ));
    } catch (e) {
      // If refresh fails, keep the current state
      if (currentState is HomeLoaded) {
        emit(currentState);
      } else {
        emit(HomeError('Gagal memperbarui data: ${e.toString()}'));
      }
    }
  }
}