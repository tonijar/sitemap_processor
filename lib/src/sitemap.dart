import 'package:json_annotation/json_annotation.dart';

part 'sitemap.g.dart';

/// Sitemap object
@JsonSerializable(explicitToJson: true)
class Sitemap {
  final SitemapUrlSet urlset;

  Sitemap(this.urlset);

  factory Sitemap.fromJson(Map<String, dynamic> json) =>
      _$SitemapFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapToJson(this);
}

/// Sitemap URL set object
@JsonSerializable(explicitToJson: true)
class SitemapUrlSet {
  final List<SitemapUrl> url;

  SitemapUrlSet(this.url);

  factory SitemapUrlSet.fromJson(Map<String, dynamic> json) =>
      _$SitemapUrlSetFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapUrlSetToJson(this);
}

/// Sitemap URL object
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

/// Sitemap image object
@JsonSerializable()
class SitemapImage {
  final String loc;
  final String title;
  final String caption;
  @JsonKey(name: "geo_location")
  final String geoLocation;
  final String license;

  SitemapImage(
      this.loc, this.title, this.caption, this.geoLocation, this.license);

  factory SitemapImage.fromJson(Map<String, dynamic> json) =>
      _$SitemapImageFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapImageToJson(this);
}

/// Sitemap video object
@JsonSerializable()
class SitemapVideo {
  @JsonKey(name: "thumbnail_loc")
  final String thumbnailLoc;
  final String title;
  final String description;
  @JsonKey(name: "content_loc")
  final String contentLoc;
  @JsonKey(name: "content_loc")
  final String playerLoc;
  final String duration;
  @JsonKey(name: "expiration_date")
  final String expirationDate;
  final String rating;
  @JsonKey(name: "view_count")
  final String viewCount;
  @JsonKey(name: "publication_date")
  final String publicationDate;
  @JsonKey(name: "family_friendly")
  final String familyFriendly;
  final String restriction;
  final String price;
  @JsonKey(name: "requires_subscription")
  final String requiresSubscription;
  final String uploader;
  final String live;

  SitemapVideo(
      this.thumbnailLoc,
      this.title,
      this.description,
      this.contentLoc,
      this.playerLoc,
      this.duration,
      this.expirationDate,
      this.rating,
      this.viewCount,
      this.publicationDate,
      this.familyFriendly,
      this.restriction,
      this.price,
      this.requiresSubscription,
      this.uploader,
      this.live);

  factory SitemapVideo.fromJson(Map<String, dynamic> json) =>
      _$SitemapVideoFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapVideoToJson(this);
}

/// Sitemap news object
@JsonSerializable(explicitToJson: true)
class SitemapNews {
  @JsonKey(name: "publication_date")
  final String publicationDate;
  final String title;
  final SitemapPublication publication;

  SitemapNews(this.publicationDate, this.title, this.publication);

  factory SitemapNews.fromJson(Map<String, dynamic> json) =>
      _$SitemapNewsFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapNewsToJson(this);
}

/// Sitemap publication object
@JsonSerializable()
class SitemapPublication {
  final String name;
  final String language;

  SitemapPublication(this.name, this.language);

  factory SitemapPublication.fromJson(Map<String, dynamic> json) =>
      _$SitemapPublicationFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapPublicationToJson(this);
}
