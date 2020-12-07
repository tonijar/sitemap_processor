import 'package:json_annotation/json_annotation.dart';

part 'sitemap_index.g.dart';

/// Sitemap index object
@JsonSerializable(explicitToJson: true)
class SitemapIndex {
  /// List of sitemap index
  final SitemapIndexList sitemapindex;

  /// Default SitemapIndex constructor
  SitemapIndex(this.sitemapindex);

  /// From JSON method
  factory SitemapIndex.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapIndexToJson(this);
}

/// Sitemap index list object
@JsonSerializable(explicitToJson: true)
class SitemapIndexList {
  /// List of sitemap index items
  final List<SitemapIndexItem> sitemap;

  /// Default SitemapIndexList constructor
  SitemapIndexList(this.sitemap);

  /// From JSON method
  factory SitemapIndexList.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexListFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapIndexListToJson(this);
}

/// Sitemap index item object
@JsonSerializable()
class SitemapIndexItem {
  /// Location of sitemap index
  final String loc;

  /// Last modification of sitemap index
  final String lastmod;

  /// Default SitemapIndexItem constructor
  SitemapIndexItem(this.loc, this.lastmod);

  /// From JSON method
  factory SitemapIndexItem.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexItemFromJson(json);

  /// To JSON method
  Map<String, dynamic> toJson() => _$SitemapIndexItemToJson(this);
}
