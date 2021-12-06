import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'braiderss_record.g.dart';

abstract class BraiderssRecord
    implements Built<BraiderssRecord, BraiderssRecordBuilder> {
  static Serializer<BraiderssRecord> get serializer =>
      _$braiderssRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get address;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BraiderssRecordBuilder builder) => builder
    ..name = ''
    ..address = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('braiderss');

  static Stream<BraiderssRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BraiderssRecord._();
  factory BraiderssRecord([void Function(BraiderssRecordBuilder) updates]) =
      _$BraiderssRecord;

  static BraiderssRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBraiderssRecordData({
  String name,
  String address,
}) =>
    serializers.toFirestore(
        BraiderssRecord.serializer,
        BraiderssRecord((b) => b
          ..name = name
          ..address = address));
