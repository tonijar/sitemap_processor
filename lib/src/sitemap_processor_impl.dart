import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'sitemap.dart';
import 'sitemap_index.dart';

/// A sitemap and sitemap index processor
class SitemapProcessor {

  /// Process XML string and return sitemap or sitemap index object
  dynamic process(String xml) {
    final Xml2Json xml2Json = Xml2Json();
    try {
      xml2Json.parse(xml);
      final xmlJson = xml2Json.toParker();
      final xmlJsonWithoutNamespaces = _removeAllNamespaces(xmlJson);
      final json = jsonDecode(xmlJsonWithoutNamespaces);
      if (json['urlset'] != null) {
        return _processSitemap(json);
      } else if (json['sitemapindex'] != null) {
        return _processSitemapIndex(json);
      } else {
        throw FormatException("Unknown XML root element " +
            xml2Json.xmlParserResult.rootElement.name.toString());
      }
    } catch (e, stacktrace) {
      print(e.toString() + stacktrace.toString());
    }
  }

  dynamic _processSitemap(json) {
    if (json['urlset']['url'] != null) {
      if (json['urlset']['url'] is Map<String, dynamic>) {
        final List<dynamic> list = new List<dynamic>();
        list.add(json['urlset']['url']);
        json['urlset']['url'] = list;
      }
      _processSitemapUrl(json['urlset']['url']);
    }
    return Sitemap.fromJson(json);
  }

  dynamic _processSitemapUrl(List<dynamic> json) {
    json.forEach((element) {
      if (element['image'] != null &&
          element['image'] is Map<String, dynamic>) {
        final List<dynamic> list = new List<dynamic>();
        list.add(element['image']);
        element['image'] = list;
      }
      if (element['video'] != null &&
          element['video'] is Map<String, dynamic>) {
        final List<dynamic> list = new List<dynamic>();
        list.add(element['video']);
        element['video'] = list;
      }
      if (element['news'] != null && element['news'] is Map<String, dynamic>) {
        final List<dynamic> list = new List<dynamic>();
        list.add(element['news']);
        element['news'] = list;
      }
    });
  }

  dynamic _processSitemapIndex(json) {
    if (json['sitemapindex']['sitemap'] != null &&
        json['sitemapindex']['sitemap'] is Map<String, dynamic>) {
      final List<dynamic> list = new List<dynamic>();
      list.add(json['sitemapindex']['sitemap']);
      json['sitemapindex']['sitemap'] = list;
    }
    return SitemapIndex.fromJson(json);
  }

  String _removeAllNamespaces(String xml) => xml.replaceAllMapped(
      new RegExp(r'"(\w*):(\w*)":', caseSensitive: false),
      (Match m) => '"${m[2]}":');
}
