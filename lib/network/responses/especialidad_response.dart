import 'package:json_annotation/json_annotation.dart';
import 'package:restaurante_esp/network/entities/especialidad_entity.dart';

part 'especialidad_response.g.dart';
@JsonSerializable()
class EspecialidadResponse {

  final String? respuesta;

  @JsonKey(name: 'datos')
  final EspecialidadEntity? especialidadEntity;

  EspecialidadResponse({this.respuesta, this.especialidadEntity});

  factory EspecialidadResponse.fromJson(Map<String, dynamic> json) =>
      _$EspecialidadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EspecialidadResponseToJson(this);

}