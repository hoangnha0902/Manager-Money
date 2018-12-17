import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:manager_money_wedding/data/wedding_data_impl.dart';

import 'home_contract.dart';

class HomePresenterImpl implements HomePresenter {
  HomeView _view;
  WeddingItemRepositoryImpl _repository;
  State _state;

  HomePresenterImpl(this._view) {
    _repository = WeddingItemRepositoryImpl();
  }

  @override
  VoidCallback initView(State state) => () {
    _state = state;
  };

  @override
  void loadWeddingItemList() {
    if (_view == null) {
      print('null');
      return;
    } else if (_view != null) {
      print('true');
    }
    _repository
        .fetchWeddingItemList()
        .then((kWeddingItems) => _view.onLoadWeddingListComplete(kWeddingItems))
        .catchError(() => _view.onLoadWeddingError());
  }
}
