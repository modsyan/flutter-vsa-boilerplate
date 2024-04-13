import 'package:avanced_course/data/response/responses.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/network/server_configurations.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: baseUrl)

abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String? baseUrl}) = _AppServiceClient;
  // @POST("")
  // Future<AuthenticationResponse> login(
  //     @Field("email") String email, @Field("password") String password);
}
