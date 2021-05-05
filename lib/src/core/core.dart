import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'core.g.dart';

class BaseStore = _BaseStore with _$BaseStore;

abstract class _BaseStore with Store {
  @observable
  List<Widget> widgets;
}
