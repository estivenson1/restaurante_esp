import 'package:json_annotation/json_annotation.dart';

part 'especialidad_entity.g.dart';
@JsonSerializable()
class EspecialidadEntity {

  final String? nombre;
  final String? descripcion;
  final int? precio;
  @JsonKey(name: 'url_foto')
  final String? urlFoto;

  EspecialidadEntity({this.nombre, this.descripcion, this.precio, this.urlFoto});

  factory EspecialidadEntity.fromJson(Map<String, dynamic> json) =>
      _$EspecialidadEntityFromJson(json);

  Map<String, dynamic> toJson() => _$EspecialidadEntityToJson(this);

}