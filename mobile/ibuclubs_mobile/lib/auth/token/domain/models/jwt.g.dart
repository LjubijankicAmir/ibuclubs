// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JwtAdapter extends TypeAdapter<Jwt> {
  @override
  final int typeId = 1;

  @override
  Jwt read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Jwt(
      token: fields[0] as String,
      refreshToken: fields[1] as String,
      role: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Jwt obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JwtAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
