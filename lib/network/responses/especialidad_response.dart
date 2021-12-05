import 'package:json_annotation/json_annotation.dart';

part 'especialidad_response.g.dart';
@JsonSerializable()
class EspecialidadResponse {

  final String? respuesta;

  EspecialidadResponse({this.respuesta});

  factory EspecialidadResponse.fromJson(Map<String, dynamic> json) =>
      _$EspecialidadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EspecialidadResponseToJson(this);

}