import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_app/data/datasource/region/field_remote_data_source.dart';
import 'package:weather_app/data/datasource/region/forecast_remote_data_source.dart';
import 'package:weather_app/data/repository/field_repository.dart';
import 'package:weather_app/data/repository/forecast_repository.dart';
import 'package:weather_app/data/services/api_interceptors.dart';
import 'package:weather_app/data/services/field_services.dart';
import 'package:weather_app/data/services/forecast_services.dart';
import 'package:weather_app/domain/repository/forecast_repository.dart';
import 'package:weather_app/domain/repository/region_repository.dart';
import 'package:weather_app/domain/usecase/get_forecast.dart';
import 'package:weather_app/domain/usecase/get_list_city.dart';
import 'package:weather_app/domain/usecase/get_list_region.dart';
import 'package:weather_app/ui/page/boarding/boarding_cubit.dart';
import 'package:weather_app/ui/page/home/home_cubit.dart';

final locator = GetIt.instance;

Future<void> init() async {

  final logging = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90
  );

  locator.registerLazySingleton(() =>
      BoardingCubit(locator(), locator())
  );

  locator.registerLazySingleton(() =>
      HomeCubit(locator())
  );

  locator.registerLazySingleton(() => GetListRegion(locator()));
  locator.registerLazySingleton(() => GetListCity(locator()));
  locator.registerLazySingleton(() => GetForecast(locator()));

  locator.registerLazySingleton<FieldRepository>(() =>
      FieldRepositoryImpl(locator())
  );
  locator.registerLazySingleton<ForecastRepository>(() =>
      ForecastRepositoryImpl(locator())
  );

  locator.registerLazySingleton<FieldRemoteDataSource>(() =>
      FieldRemoteDataSourceImpl(locator())
  );
  locator.registerLazySingleton<ForecastRemoteDataSource>(() =>
      ForecastRemoteDataSourceImpl(locator())
  );

  locator.registerLazySingleton(() {
    final dio = Dio(
        BaseOptions(
            baseUrl: 'https://ibnux.github.io/data-indonesia',
            connectTimeout: 5000,
            receiveTimeout: 3000,
        )
    );

    dio.interceptors.add(logging);
    dio.interceptors.add(AppInterceptors(dio));

    return FieldServices(dio);
  });

  locator.registerLazySingleton(() {
    final dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.openweathermap.org/data/2.5',
          connectTimeout: 5000,
          receiveTimeout: 3000,
          queryParameters: {
            'appid' : 'ea0ab496bc2f4e9c0cc7af9baee579c8'
          }
        )
    );

    dio.interceptors.add(logging);
    dio.interceptors.add(AppInterceptors(dio));

    return ForecastServices(dio);
  });

}