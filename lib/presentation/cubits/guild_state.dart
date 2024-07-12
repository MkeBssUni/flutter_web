import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/model/guild_model.dart';


abstract class GuildState extends Equatable {
  @override
  List<Object?> get props => [];
}

class GuildInitial extends GuildState {}

class GuildLoading extends GuildState {}

class GuildSuccess extends GuildState {
  final List<Guild> guilds;

  GuildSuccess({required this.guilds});

  @override
  List<Object?> get props => [guilds];
}

class GuildError extends GuildState {
  final String message;

  GuildError({required this.message});

  @override
  List<Object?> get props => [message];
}
