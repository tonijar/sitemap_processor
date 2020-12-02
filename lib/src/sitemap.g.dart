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
    (json['image'] as List)
        ?.map((e) =>
            e == null ? null : SitemapImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['video'] as List)
        ?.map((e) =>
            e == null ? null : SitemapVideo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['news'] as List)
        ?.map((e) =>
            e == null ? null : SitemapNews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SitemapUrlToJson(SitemapUrl instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'lastmod': instance.lastmod,
      'changefreq': instance.changefreq,
      'priority': instance.priority,
      'image': instance.image?.map((e) => e?.toJson())?.toList(),
      'video': instance.video?.map((e) => e?.toJson())?.toList(),
      'news': instance.news?.map((e) => e?.toJson())?.toList(),
    };

SitemapImage _$SitemapImageFromJson(Map<String, dynamic> json) {
  return SitemapImage(
    json['loc'] as String,
    json['title'] as String,
    json['caption'] as String,
    json['geo_location'] as String,
    json['license'] as String,
  );
}

Map<String, dynamic> _$SitemapImageToJson(SitemapImage instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'title': instance.title,
      'caption': instance.caption,
      'geo_location': instance.geo_location,
      'license': instance.license,
    };

SitemapVideo _$SitemapVideoFromJson(Map<String, dynamic> json) {
  return SitemapVideo(
    json['thumbnail_loc'] as String,
    json['title'] as String,
    json['description'] as String,
    json['content_loc'] as String,
    json['player_loc'] as String,
    json['duration'] as String,
    json['expiration_date'] as String,
    json['rating'] as String,
    json['view_count'] as String,
    json['publication_date'] as String,
    json['family_friendly'] as String,
    json['restriction'] as String,
    json['price'] as String,
    json['requires_subscription'] as String,
    json['uploader'] as String,
    json['live'] as String,
  );
}

Map<String, dynamic> _$SitemapVideoToJson(SitemapVideo instance) =>
    <String, dynamic>{
      'thumbnail_loc': instance.thumbnail_loc,
      'title': instance.title,
      'description': instance.description,
      'content_loc': instance.content_loc,
      'player_loc': instance.player_loc,
      'duration': instance.duration,
      'expiration_date': instance.expiration_date,
      'rating': instance.rating,
      'view_count': instance.view_count,
      'publication_date': instance.publication_date,
      'family_friendly': instance.family_friendly,
      'restriction': instance.restriction,
      'price': instance.price,
      'requires_subscription': instance.requires_subscription,
      'uploader': instance.uploader,
      'live': instance.live,
    };

SitemapNews _$SitemapNewsFromJson(Map<String, dynamic> json) {
  return SitemapNews(
    json['publication_date'] as String,
    json['title'] as String,
    json['publication'] == null
        ? null
        : SitemapPublication.fromJson(
            json['publication'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SitemapNewsToJson(SitemapNews instance) =>
    <String, dynamic>{
      'publication_date': instance.publication_date,
      'title': instance.title,
      'publication': instance.publication?.toJson(),
    };

SitemapPublication _$SitemapPublicationFromJson(Map<String, dynamic> json) {
  return SitemapPublication(
    json['name'] as String,
    json['language'] as String,
  );
}

Map<String, dynamic> _$SitemapPublicationToJson(SitemapPublication instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };
