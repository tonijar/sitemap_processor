import 'package:flutter_test/flutter_test.dart';
import 'package:sitemap_processor/sitemap_processor.dart';

void main() {
  final tested = SitemapProcessor();
  test('process valid simple sitemap', () {
    Sitemap sitemap = tested.processXMLFile("test/simple_valid/sitemap.xml");
    expect(sitemap, isNotNull);
    expect(sitemap.urlset, isNotNull);
    expect(sitemap.urlset.url.length, 2);
    expect(sitemap.urlset.url[0].loc, isNotNull);
    expect(sitemap.urlset.url[0].lastmod, isNotNull);
    expect(sitemap.urlset.url[0].changefreq, isNotNull);
    expect(sitemap.urlset.url[0].priority, isNotNull);
    expect(sitemap.urlset.url[1].loc, isNotNull);
    expect(sitemap.urlset.url[1].lastmod, isNotNull);
    expect(sitemap.urlset.url[1].changefreq, isNotNull);
    expect(sitemap.urlset.url[1].priority, isNotNull);
  });

  test('process invalid simple sitemap', () {
    Sitemap sitemap = tested.processXMLFile("test/simple_invalid/sitemap.xml");
    expect(sitemap, isNull);
  });

  test('process malformed simple sitemap', () {
    Sitemap sitemap = tested.processXMLFile("test/simple_malformed/sitemap.xml");
    expect(sitemap, isNull);
  });

  test('process valid simple sitemap index', () {
    SitemapIndex sitemapIndex = tested.processXMLFile("test/simple_valid/sitemap_index.xml");
    expect(sitemapIndex, isNotNull);
    expect(sitemapIndex.sitemapindex, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap.length, 2);
    expect(sitemapIndex.sitemapindex.sitemap[0].loc, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[0].lastmod, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[1].loc, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[1].lastmod, isNotNull);
  });

  test('process invalid simple sitemap index', () {
    SitemapIndex sitemapIndex = tested.processXMLFile("test/simple_invalid/sitemap_index.xml");
    expect(sitemapIndex, isNull);
  });

  test('process malformed simple sitemap index', () {
    SitemapIndex sitemapIndex = tested.processXMLFile("test/simple_malformed/sitemap_index.xml");
    expect(sitemapIndex, isNull);
  });
}
