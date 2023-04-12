// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_controller_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NumberControllerMobx on NumberControllerMobxBase, Store {
  late final _$numberAtom =
      Atom(name: 'NumberControllerMobxBase.number', context: context);

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  late final _$randomAsyncAction =
      AsyncAction('NumberControllerMobxBase.random', context: context);

  @override
  Future<void> random() {
    return _$randomAsyncAction.run(() => super.random());
  }

  late final _$NumberControllerMobxBaseActionController =
      ActionController(name: 'NumberControllerMobxBase', context: context);

  @override
  void add() {
    final _$actionInfo = _$NumberControllerMobxBaseActionController.startAction(
        name: 'NumberControllerMobxBase.add');
    try {
      return super.add();
    } finally {
      _$NumberControllerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number: ${number}
    ''';
  }
}
