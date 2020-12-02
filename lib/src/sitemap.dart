import 'package:json_annotation/json_annotation.dart';

part 'sitemap.g.dart';

/// Sitemap representation
@JsonSerializable(explicitToJson: true)
class Sitemap {
  final SitemapUrlSet urlset;

  Sitemap(this.urlset);

  factory Sitemap.fromJson(Map<String, dynamic> json) =>
      _$SitemapFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SitemapUrlSet {
  final List<SitemapUrl> url;

  SitemapUrlSet(this.url);

  factory SitemapUrlSet.fromJson(Map<String, dynamic> json) =>
      _$SitemapUrlSetFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapUrlSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SitemapUrl {
  final String loc;
  final String lastmod;
  final String changefreq;
  final String priority;
  final List<SitemapImage> image;
  final List<SitemapVideo> video;
  final List<SitemapNews> news;

  SitemapUrl(this.loc, this.lastmod, this.changefreq, this.priority, this.image,
      this.video, this.news);

  factory SitemapUrl.fromJson(Map<String, dynamic> json) =>
      _$SitemapUrlFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapUrlToJson(this);
}

@JsonSerializable()
class SitemapImage {
  final String loc;
  final String title;
  final String caption;
  final String geo_location;
  final String license;

  SitemapImage(
      this.loc, this.title, this.caption, this.geo_location, this.license);

  factory SitemapImage.fromJson(Map<String, dynamic> json) =>
      _$SitemapImageFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapImageToJson(this);
}

@JsonSerializable()
class SitemapVideo {
  final String thumbnail_loc;
  final String title;
  final String description;
  final String content_loc;
  final String player_loc;
  final String duration;
  final String expiration_date;
  final String rating;
  final String view_count;
  final String publication_date;
  final String family_friendly;
  final String restriction;
  final String price;
  final String requires_subscription;
  final String uploader;
  final String live;

  SitemapVideo(
      this.thumbnail_loc,
      this.title,
      this.description,
      this.content_loc,
      this.player_loc,
      this.duration,
      this.expiration_date,
      this.rating,
      this.view_count,
      this.publication_date,
      this.family_friendly,
      this.restriction,
      this.price,
      this.requires_subscription,
      this.uploader,
      this.live);

  factory SitemapVideo.fromJson(Map<String, dynamic> json) =>
      _$SitemapVideoFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapVideoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SitemapNews {
  final String publication_date;
  final String title;
  final SitemapPublication publication;

  SitemapNews(this.publication_date, this.title, this.publication);

  factory SitemapNews.fromJson(Map<String, dynamic> json) =>
      _$SitemapNewsFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapNewsToJson(this);
}

@JsonSerializable()
class SitemapPublication {
  final String name;
  final String language;

  SitemapPublication(this.name, this.language);

  factory SitemapPublication.fromJson(Map<String, dynamic> json) =>
      _$SitemapPublicationFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapPublicationToJson(this);
}
