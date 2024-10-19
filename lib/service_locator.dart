import 'package:get_it/get_it.dart';
import 'package:movies/core/network/dio_client.dart';

final sl = GetIt.instance;

void serviceLocator() {

  // dio client
  sl.registerSingleton<DioClient>(DioClient());


}
