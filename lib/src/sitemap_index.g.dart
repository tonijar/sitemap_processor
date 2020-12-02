// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitemap_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SitemapIndex _$SitemapIndexFromJson(Map<String, dynamic> json) {
  return SitemapIndex(
    json['sitemapindex'] == null
        ? null
        : SitemapIndexList.fromJson(json['sitemapindex']),
  );
}

Map<String, dynamic> _$SitemapIndexToJson(SitemapIndex instance) =>
    <String, dynamic>{
      'sitemapindex': instance.sitemapindex?.toJson(),
    };

SitemapIndexList _$SitemapIndexListFromJson(Map<String, dynamic> json) {
  return SitemapIndexList(
    (json['sitemap'] as List)
        ?.map((e) => e == null
            ? null
            : SitemapIndexItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SitemapIndexListToJson(SitemapIndexList instance) =>
    <String, dynamic>{
      'sitemap': instance.sitemap?.map((e) => e?.toJson())?.toList(),
    };

SitemapIndexItem _$SitemapIndexItemFromJson(Map<String, dynamic> json) {
  return SitemapIndexItem(
    json['loc'] as String,
    json['lastmod'] as String,
  );
}

Map<String, dynamic> _$SitemapIndexItemToJson(SitemapIndexItem instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'lastmod': instance.lastmod,
    };
