// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelAdapter extends TypeAdapter<Model> {
  @override
  final int typeId = 0;

  @override
  Model read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Model(
      count: fields[0] as int?,
      entries: (fields[1] as List?)?.cast<Entries>(),
    );
  }

  @override
  void write(BinaryWriter writer, Model obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.count)
      ..writeByte(1)
      ..write(obj.entries);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EntriesAdapter extends TypeAdapter<Entries> {
  @override
  final int typeId = 1;

  @override
  Entries read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Entries(
      aPI: fields[0] as String?,
      description: fields[1] as String?,
      auth: fields[2] as String?,
      hTTPS: fields[3] as bool?,
      cors: fields[4] as String?,
      link: fields[5] as String?,
      category: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Entries obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.aPI)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.auth)
      ..writeByte(3)
      ..write(obj.hTTPS)
      ..writeByte(4)
      ..write(obj.cors)
      ..writeByte(5)
      ..write(obj.link)
      ..writeByte(6)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EntriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
