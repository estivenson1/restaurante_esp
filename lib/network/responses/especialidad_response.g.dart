// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'especialidad_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EspecialidadResponse _$EspecialidadResponseFromJson(
        Map<String, dynamic> json) =>
    EspecialidadResponse(
      respuesta: json['respuesta'] as String?,
      especialidadEntity: json['datos'] == null
          ? null
          : EspecialidadEntity.fromJson(json['datos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EspecialidadResponseToJson(
        EspecialidadResponse instance) =>
    <String, dynamic>{
      'respuesta': instance.respuesta,
      'datos': instance.especialidadEntity,
    };
