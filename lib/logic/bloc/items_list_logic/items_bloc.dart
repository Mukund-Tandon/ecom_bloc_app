import 'package:bloc/bloc.dart';
import 'package:ecom_bloc_app/repos/items_repository.dart';
import 'package:ecom_bloc_app/repos/models/items.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'items_event.dart';
part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final ItemsRepo itemsRepo ;
  ItemsBloc({required this.itemsRepo}) : super(ItemsInitial()) {
    on<GetItems>(_getItems);
  }
  void _getItems(GetItems getItems ,Emitter<ItemsState> emit)async{
    emit(ItemsLoading());
    List<Items>  items = await itemsRepo.getItems();
    emit(ItemsLoaded(items: items));
  }

  
}
