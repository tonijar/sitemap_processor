import 'package:json_annotation/json_annotation.dart';

part 'sitemap.g.dart';

/// Sitemap object
@JsonSerializable(explicitToJson: true)
class Sitemap {
  /// URL set of the sitemap
  final SitemapUrlSet urlset;

  /// Default Sitemap constructor
  Sitemap(this.urlset);

  /// From JSON method
  factory Sitemap.fromJson(Map<String, dynamic> json) =>
      _$SitemapFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapToJson(this);
}

/// Sitemap URL set object
@JsonSerializable(explicitToJson: true)
class SitemapUrlSet {
  /// URL list of sitemap
  final List<SitemapUrl> url;

  /// Default SitemapUrlSet constructor
  SitemapUrlSet(this.url);

  /// From JSON method
  factory SitemapUrlSet.fromJson(Map<String, dynamic> json) =>
      _$SitemapUrlSetFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapUrlSetToJson(this);
}

/// Sitemap URL object
@JsonSerializable(explicitToJson: true)
class SitemapUrl {
  /// URL location
  final String loc;

  /// URL last modification
  final String lastmod;

  /// URL change frequency
  final String changefreq;

  /// URL priority
  final String priority;

  /// URL image list
  final List<SitemapImage> image;

  /// URL video list
  final List<SitemapVideo> video;

  /// URL news list
  final List<SitemapNews> news;

  /// Default SitemapUrl constructor
  SitemapUrl(this.loc, this.lastmod, this.changefreq, this.priority, this.image,
      this.video, this.news);

  /// From JSON method
  factory SitemapUrl.fromJson(Map<String, dynamic> json) =>
      _$SitemapUrlFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapUrlToJson(this);
}

/// Sitemap image object
@JsonSerializable()
class SitemapImage {
  /// Image location
  final String loc;

  /// Image title
  final String title;

  /// Image caption
  final String caption;

  /// Image geolocation
  @JsonKey(name: "geo_location")
  final String geoLocation;

  /// Image license
  final String license;

  /// Default SitemapImage constructor
  SitemapImage(
      this.loc, this.title, this.caption, this.geoLocation, this.license);

  /// From JSON method
  factory SitemapImage.fromJson(Map<String, dynamic> json) =>
      _$SitemapImageFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapImageToJson(this);
}

/// Sitemap video object
@JsonSerializable()
class SitemapVideo {
  /// Video thumbnail location
  @JsonKey(name: "thumbnail_loc")
  final String thumbnailLoc;

  /// Video title
  final String title;

  /// Video description
  final String description;

  /// Video content location
  @JsonKey(name: "content_loc")
  final String contentLoc;

  /// Video player location
  @JsonKey(name: "player_loc")
  final String playerLoc;

  /// Video duration
  final String duration;

  /// Video expiration date
  @JsonKey(name: "expiration_date")
  final String expirationDate;

  /// Video rating
  final String rating;

  /// Video view count
  @JsonKey(name: "view_count")
  final String viewCount;

  /// Video publication date
  @JsonKey(name: "publication_date")
  final String publicationDate;

  /// Video family friendly
  @JsonKey(name: "family_friendly")
  final String familyFriendly;

  /// Video restriction
  final String restriction;

  /// Video price
  final String price;

  /// Video requires subscription
  @JsonKey(name: "requires_subscription")
  final String requiresSubscription;

  /// Video uploader
  final String uploader;

  /// Video live
  final String live;

  /// Default SitemapVideo constructor
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

  /// From JSON method
  factory SitemapVideo.fromJson(Map<String, dynamic> json) =>
      _$SitemapVideoFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapVideoToJson(this);
}

/// Sitemap news object
@JsonSerializable(explicitToJson: true)
class SitemapNews {
  /// Publication date of the new
  @JsonKey(name: "publication_date")
  final String publicationDate;

  /// Title of the new
  final String title;

  /// Publication of the new
  final SitemapPublication publication;

  /// Default SitemapNews constructor
  SitemapNews(this.publicationDate, this.title, this.publication);

  /// From JSON method
  factory SitemapNews.fromJson(Map<String, dynamic> json) =>
      _$SitemapNewsFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapNewsToJson(this);
}

/// Sitemap publication object
@JsonSerializable()
class SitemapPublication {
  /// Name of the publication
  final String name;

  /// Language of the publication
  final String language;

  /// Default SitemapPublication constructor
  SitemapPublication(this.name, this.language);

  /// From JSON method
  factory SitemapPublication.fromJson(Map<String, dynamic> json) =>
      _$SitemapPublicationFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapPublicationToJson(this);
}
