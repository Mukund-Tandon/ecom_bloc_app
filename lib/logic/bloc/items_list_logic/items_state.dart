part of 'items_bloc.dart';

@immutable
abstract class ItemsState {}

class ItemsInitial extends ItemsState {}

class ItemsLoading extends ItemsState{
  ItemsLoading();
}

class ItemsLoaded extends ItemsState{
  final List<Items> items;

  ItemsLoaded({required this.items});
}