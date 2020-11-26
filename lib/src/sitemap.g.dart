// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitemap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sitemap _$SitemapFromJson(Map<String, dynamic> json) {
  return Sitemap(
    json['urlset'] == null
        ? null
        : SitemapUrlSet.fromJson(json['urlset'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SitemapToJson(Sitemap instance) => <String, dynamic>{
      'urlset': instance.urlset?.toJson(),
    };

SitemapUrlSet _$SitemapUrlSetFromJson(Map<String, dynamic> json) {
  return SitemapUrlSet(
    (json['url'] as List)
        ?.map((e) =>
            e == null ? null : SitemapUrl.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SitemapUrlSetToJson(SitemapUrlSet instance) =>
    <String, dynamic>{
      'url': instance.url?.map((e) => e?.toJson())?.toList(),
    };

SitemapUrl _$SitemapUrlFromJson(Map<String, dynamic> json) {
  return SitemapUrl(
    json['loc'] as String,
    json['lastmod'] as String,
    json['changefreq'] as String,
    json['priority'] as String,
  );
}

Map<String, dynamic> _$SitemapUrlToJson(SitemapUrl instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'lastmod': instance.lastmod,
      'changefreq': instance.changefreq,
      'priority': instance.priority,
    };
