import 'package:dio/dio.dart';
import 'package:restaurante_esp/network/responses/especialidad_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

// done this file

@RestApi(baseUrl:'https://wsc.fabricasoftware.co/api') // Enter you base URL
abstract class ApiService {

  factory ApiService(Dio dio, {required String baseUrl}){

    /*
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
        contentType: 'application/json',
        /* If needed headers */
        headers: {
          'Authorization': 'Basic ZGlzYXBpdXNlcjpkaXMjMTIz',
          'X-ApiKey': 'ZGslzIzEyMw==',
          'Content-Type': 'application/json'
        }
    );
*/
    return _ApiService(dio,baseUrl:baseUrl);
  }

  // Login service
  @GET('/especialidad') // enter your api method
  Future<EspecialidadResponse> getEspecialidad ();


}