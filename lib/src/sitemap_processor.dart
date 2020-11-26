part of '../sitemap_processor.dart';

/// A Sitemap processor, more info at: https://www.sitemaps.org/protocol.html
class SitemapProcessor {

  getJsonFromXMLFile(path) {
    try {
      return getJsonFromXMLString(File(path).readAsStringSync());
    } catch (e) {
      print(e);
    }
  }

  getJsonFromXMLString(String xml) {
    final Xml2Json xml2Json = Xml2Json();
    try {
      xml2Json.parse(xml);
      return Sitemap.fromJson(jsonDecode(xml2Json.toParker()));
      //return jsonDecode(xml2Json.toParker());
    } catch (e) {
      print(e);
    }
  }
}
