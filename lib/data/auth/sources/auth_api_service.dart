import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies/core/network/dio_client.dart';
import 'package:movies/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signup();
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signup() async{
    try {
      var response = sl<DioClient>().get();
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}