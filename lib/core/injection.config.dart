// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_provider_bloc/features/home/domain/usecase/fetch_random_number_usecase.dart'
    as _i3;
import 'package:flutter_provider_bloc/features/home/home.dart' as _i5;
import 'package:flutter_provider_bloc/features/home/presentation/controller/bloc/number_controller_bloc.dart'
    as _i4;
import 'package:flutter_provider_bloc/features/home/presentation/controller/cubit/number_controller_cubit.dart'
    as _i6;
import 'package:flutter_provider_bloc/features/home/presentation/controller/provider/number_controller_provider.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IFetchRandomNumberUsecase>(
        () => _i3.FetchRandomNumberUsecase());
    gh.factory<_i4.NumberControllerBloc>(
        () => _i4.NumberControllerBloc(gh<_i5.IFetchRandomNumberUsecase>()));
    gh.factory<_i6.NumberControllerCubit>(
        () => _i6.NumberControllerCubit(gh<_i5.IFetchRandomNumberUsecase>()));
    gh.factory<_i7.NumberControllerProvider>(() =>
        _i7.NumberControllerProvider(gh<_i3.IFetchRandomNumberUsecase>()));
    return this;
  }
}
