import 'package:equatable/equatable.dart';

import '../../../../domain/entities/user_entity.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final UserEntity? userInfo;
  final int unreadNotificationsCount;

  HomeLoaded({
    this.userInfo,
    this.unreadNotificationsCount = 0,
  });

  @override
  List<Object?> get props => [userInfo, unreadNotificationsCount];
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}