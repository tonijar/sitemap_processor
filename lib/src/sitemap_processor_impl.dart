import 'dart:convert';
import 'dart:io';
import 'package:xml2json/xml2json.dart';
import 'sitemap.dart';
import 'sitemap_index.dart';

/// A Sitemap and sitemap index processor
class SitemapProcessor {
  /// Process XML file and return sitemap or sitemap index object
  processXMLFile(path) {
    return processXMLString(File(path).readAsStringSync());
  }

  /// Process XML string and return sitemap or sitemap index object
  processXMLString(String xml) {
    final Xml2Json xml2Json = Xml2Json();
    try {
      xml2Json.parse(xml);
      final json = jsonDecode(xml2Json.toParker());
      if (json['urlset'] != null) {
        return Sitemap.fromJson(json);
      } else if (json['sitemapindex'] != null) {
        return SitemapIndex.fromJson(json);
      } else {
        throw FormatException("Unknown XML root element " +
            xml2Json.xmlParserResult.rootElement.name.toString());
      }
    } catch (e) {
      print(e);
    }
  }
}
