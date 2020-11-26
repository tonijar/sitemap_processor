import 'package:flutter_test/flutter_test.dart';

import 'package:sitemap_processor/sitemap_processor.dart';
import 'package:sitemap_processor/src/sitemap.dart';

void main() {
  test('adds one to input values', () {
    final tested = SitemapProcessor();
    Sitemap sitemap = tested.getJsonFromXMLFile("C:\\Users\\tonij\\AndroidStudioProjects\\sitemap_processor\\test\\sitemap.xml");
    expect(sitemap, isNotNull);
    print(sitemap.urlset.url[0].changefreq);
    //print(Sitemap.fromJson(json).urlset.url[0].changefreq);
  });
}
