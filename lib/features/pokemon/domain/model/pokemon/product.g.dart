// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdById: json['createdById'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedById: json['updatedById'] as int?,
      id: json['id'] as int?,
      oldId: json['oldId'] as int?,
      standaloneAllowed: json['standaloneAllowed'] as bool?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']),
      vodafoneBaseProductId: json['vodafoneBaseProductId'] as int?,
      vodafoneProductId: json['vodafoneProductId'] as int?,
      fiberUploadMegas: json['fiberUploadMegas'] as int?,
      fiberDownloadMegas: json['fiberDownloadMegas'] as int?,
      fiberTecnology: json['fiberTecnology'] as String?,
      phonelineMegas: json['phonelineMegas'] as int?,
      phonelineMinutes: json['phonelineMinutes'] as int?,
      phonelineSms: json['phonelineSms'] as int?,
      provider: json['provider'] as String?,
      bundleName: json['bundleName'] as String?,
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => Prices.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdById': instance.createdById,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedById': instance.updatedById,
      'id': instance.id,
      'oldId': instance.oldId,
      'standaloneAllowed': instance.standaloneAllowed,
      'description': instance.description,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': _$ProductTypeEnumMap[instance.type],
      'vodafoneBaseProductId': instance.vodafoneBaseProductId,
      'vodafoneProductId': instance.vodafoneProductId,
      'fiberUploadMegas': instance.fiberUploadMegas,
      'fiberDownloadMegas': instance.fiberDownloadMegas,
      'fiberTecnology': instance.fiberTecnology,
      'phonelineMegas': instance.phonelineMegas,
      'phonelineMinutes': instance.phonelineMinutes,
      'phonelineSms': instance.phonelineSms,
      'provider': instance.provider,
      'bundleName': instance.bundleName,
      'prices': instance.prices,
      '_links': instance.links,
    };

const _$ProductTypeEnumMap = {
  ProductType.FIBERVODAFONE: 'FIBERVODAFONE',
  ProductType.PHONELINE: 'PHONELINE',
  ProductType.SWITCHBOARD: 'SWITCHBOARD',
};
