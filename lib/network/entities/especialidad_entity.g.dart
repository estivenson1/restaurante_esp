// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'especialidad_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EspecialidadEntity _$EspecialidadEntityFromJson(Map<String, dynamic> json) =>
    EspecialidadEntity(
      nombre: json['nombre'] as String?,
      descripcion: json['descripcion'] as String?,
      precio: json['precio'] as int?,
      urlFoto: json['url_foto'] as String?,
    );

Map<String, dynamic> _$EspecialidadEntityToJson(EspecialidadEntity instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'precio': instance.precio,
      'url_foto': instance.urlFoto,
    };
