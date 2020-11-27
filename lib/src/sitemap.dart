import 'package:json_annotation/json_annotation.dart';

part 'sitemap.g.dart';

/// Sitemap representation
@JsonSerializable(explicitToJson: true)
class Sitemap {
  final SitemapUrlSet urlset;

  Sitemap(this.urlset);

  factory Sitemap.fromJson(Map<String, dynamic> json) => _$SitemapFromJson(json);
  Map<String, dynamic> toJson() => _$SitemapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SitemapUrlSet {
  final List<SitemapUrl> url;

  SitemapUrlSet(this.url);

  factory SitemapUrlSet.fromJson(Map<String, dynamic> json) => _$SitemapUrlSetFromJson(json);
  Map<String, dynamic> toJson() => _$SitemapUrlSetToJson(this);
}

@JsonSerializable()
class SitemapUrl {
  final String loc;
  final String lastmod;
  final String changefreq;
  final String priority;

  SitemapUrl(this.loc, this.lastmod, this.changefreq, this.priority);

  factory SitemapUrl.fromJson(Map<String, dynamic> json) => _$SitemapUrlFromJson(json);
  Map<String, dynamic> toJson() => _$SitemapUrlToJson(this);
}