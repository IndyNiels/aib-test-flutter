// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      convergenceId: json['convergenceId'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      self: json['self'] == null
          ? null
          : LinkHref.fromJson(json['self'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : LinkHref.fromJson(json['product'] as Map<String, dynamic>),
      productConvergences: json['productConvergences'] == null
          ? null
          : LinkHref.fromJson(
              json['productConvergences'] as Map<String, dynamic>),
      baseProduct: json['baseProduct'] == null
          ? null
          : LinkHref.fromJson(json['baseProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'convergenceId': instance.convergenceId,
      'price': instance.price,
      'self': instance.self,
      'product': instance.product,
      'productConvergences': instance.productConvergences,
      'baseProduct': instance.baseProduct,
    };

_$_LinkHref _$$_LinkHrefFromJson(Map<String, dynamic> json) => _$_LinkHref(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$_LinkHrefToJson(_$_LinkHref instance) =>
    <String, dynamic>{
      'href': instance.href,
    };
