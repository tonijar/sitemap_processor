import 'package:json_annotation/json_annotation.dart';

part 'sitemap_index.g.dart';

/// Sitemap index representation
@JsonSerializable(explicitToJson: true)
class SitemapIndex {
  final SitemapIndexList sitemapindex;

  SitemapIndex(this.sitemapindex);

  factory SitemapIndex.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapIndexToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SitemapIndexList {
  final List<SitemapIndexItem> sitemap;

  SitemapIndexList(this.sitemap);

  factory SitemapIndexList.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexListFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapIndexListToJson(this);
}

@JsonSerializable()
class SitemapIndexItem {
  final String loc;
  final String lastmod;

  SitemapIndexItem(this.loc, this.lastmod);

  factory SitemapIndexItem.fromJson(Map<String, dynamic> json) =>
      _$SitemapIndexItemFromJson(json);

  Map<String, dynamic> toJson() => _$SitemapIndexItemToJson(this);
}
