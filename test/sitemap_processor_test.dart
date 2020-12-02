import 'package:flutter_test/flutter_test.dart';
import 'package:sitemap_processor/sitemap_processor.dart';
import 'dart:io';

/// Read XML file from path in a sync way
String _readFile(String path) {
  return File(path).readAsStringSync();
}

void main() {
  final SitemapProcessor tested = SitemapProcessor();

  test('process valid simple sitemap index', () {
    SitemapIndex sitemapIndex =
        tested.process(_readFile("test/simple_valid/sitemap_index.xml"));
    expect(sitemapIndex, isNotNull);
    expect(sitemapIndex.sitemapindex, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap.length, 2);
    expect(sitemapIndex.sitemapindex.sitemap[0].loc, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[0].lastmod, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[1].loc, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap[1].lastmod, isNotNull);
  });

  test('process invalid simple sitemap index', () {
    SitemapIndex sitemapIndex =
        tested.process(_readFile("test/simple_invalid/sitemap_index.xml"));
    expect(sitemapIndex, isNull);
  });

  test('process malformed simple sitemap index', () {
    SitemapIndex sitemapIndex =
        tested.process(_readFile("test/simple_malformed/sitemap_index.xml"));
    expect(sitemapIndex, isNull);
  });

  test('process valid simple sitemap', () {
    Sitemap sitemap = tested.process(_readFile("test/simple_valid/sitemap.xml"));
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
    Sitemap sitemap =
        tested.process(_readFile("test/simple_invalid/sitemap.xml"));
    expect(sitemap, isNull);
  });

  test('process malformed simple sitemap', () {
    Sitemap sitemap =
        tested.process(_readFile("test/simple_malformed/sitemap.xml"));
    expect(sitemap, isNull);
  });

  test('process valid images sitemap', () {
    Sitemap sitemap = tested.process(_readFile("test/images/sitemap.xml"));
    expect(sitemap, isNotNull);
    expect(sitemap.urlset.url.length, 2);
    expect(sitemap.urlset.url[0].loc, isNotNull);
    expect(sitemap.urlset.url[0].image, isNotNull);
    expect(sitemap.urlset.url[0].image.length, 2);
    expect(sitemap.urlset.url[0].image[0].caption, isNotNull);
    expect(sitemap.urlset.url[0].image[0].loc, isNotNull);
    expect(sitemap.urlset.url[0].image[0].title, isNotNull);
    expect(sitemap.urlset.url[0].image[0].license, isNotNull);
    expect(sitemap.urlset.url[0].image[0].geo_location, isNotNull);
    expect(sitemap.urlset.url[0].image[1].caption, isNotNull);
    expect(sitemap.urlset.url[0].image[1].loc, isNotNull);
    expect(sitemap.urlset.url[0].image[1].title, isNotNull);
    expect(sitemap.urlset.url[0].image[1].license, isNotNull);
    expect(sitemap.urlset.url[0].image[1].geo_location, isNotNull);
    expect(sitemap.urlset.url[1].loc, isNotNull);
    expect(sitemap.urlset.url[1].image, isNotNull);
    expect(sitemap.urlset.url[1].image.length, 2);
    expect(sitemap.urlset.url[1].image[0].caption, isNotNull);
    expect(sitemap.urlset.url[1].image[0].loc, isNotNull);
    expect(sitemap.urlset.url[1].image[0].title, isNotNull);
    expect(sitemap.urlset.url[1].image[0].license, isNotNull);
    expect(sitemap.urlset.url[1].image[0].geo_location, isNotNull);
    expect(sitemap.urlset.url[1].image[1].caption, isNotNull);
    expect(sitemap.urlset.url[1].image[1].loc, isNotNull);
    expect(sitemap.urlset.url[1].image[1].title, isNotNull);
    expect(sitemap.urlset.url[1].image[1].license, isNotNull);
    expect(sitemap.urlset.url[1].image[1].geo_location, isNotNull);
  });

  test('process valid videos sitemap', () {
    Sitemap sitemap = tested.process(_readFile("test/videos/sitemap.xml"));
    expect(sitemap, isNotNull);
    expect(sitemap.urlset.url.length, 2);
    expect(sitemap.urlset.url[0].loc, isNotNull);
    expect(sitemap.urlset.url[0].video, isNotNull);
    expect(sitemap.urlset.url[0].video.length, 2);
    expect(sitemap.urlset.url[0].video[0].live, isNotNull);
    expect(sitemap.urlset.url[0].video[0].uploader, isNotNull);
    expect(sitemap.urlset.url[0].video[0].requires_subscription, isNotNull);
    expect(sitemap.urlset.url[0].video[0].price, isNotNull);
    expect(sitemap.urlset.url[0].video[0].restriction, isNotNull);
    expect(sitemap.urlset.url[0].video[0].family_friendly, isNotNull);
    expect(sitemap.urlset.url[0].video[0].publication_date, isNotNull);
    expect(sitemap.urlset.url[0].video[0].view_count, isNotNull);
    expect(sitemap.urlset.url[0].video[0].rating, isNotNull);
    expect(sitemap.urlset.url[0].video[0].expiration_date, isNotNull);
    expect(sitemap.urlset.url[0].video[0].duration, isNotNull);
    expect(sitemap.urlset.url[0].video[0].player_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[0].content_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[0].description, isNotNull);
    expect(sitemap.urlset.url[0].video[0].thumbnail_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[0].title, isNotNull);
    expect(sitemap.urlset.url[0].video[1].live, isNotNull);
    expect(sitemap.urlset.url[0].video[1].uploader, isNotNull);
    expect(sitemap.urlset.url[0].video[1].requires_subscription, isNotNull);
    expect(sitemap.urlset.url[0].video[1].price, isNotNull);
    expect(sitemap.urlset.url[0].video[1].restriction, isNotNull);
    expect(sitemap.urlset.url[0].video[1].family_friendly, isNotNull);
    expect(sitemap.urlset.url[0].video[1].publication_date, isNotNull);
    expect(sitemap.urlset.url[0].video[1].view_count, isNotNull);
    expect(sitemap.urlset.url[0].video[1].rating, isNotNull);
    expect(sitemap.urlset.url[0].video[1].expiration_date, isNotNull);
    expect(sitemap.urlset.url[0].video[1].duration, isNotNull);
    expect(sitemap.urlset.url[0].video[1].player_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[1].content_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[1].description, isNotNull);
    expect(sitemap.urlset.url[0].video[1].thumbnail_loc, isNotNull);
    expect(sitemap.urlset.url[0].video[1].title, isNotNull);
    expect(sitemap.urlset.url[1].loc, isNotNull);
    expect(sitemap.urlset.url[1].video, isNotNull);
    expect(sitemap.urlset.url[1].video.length, 2);
    expect(sitemap.urlset.url[1].video[0].live, isNotNull);
    expect(sitemap.urlset.url[1].video[0].uploader, isNotNull);
    expect(sitemap.urlset.url[1].video[0].requires_subscription, isNotNull);
    expect(sitemap.urlset.url[1].video[0].price, isNotNull);
    expect(sitemap.urlset.url[1].video[0].restriction, isNotNull);
    expect(sitemap.urlset.url[1].video[0].family_friendly, isNotNull);
    expect(sitemap.urlset.url[1].video[0].publication_date, isNotNull);
    expect(sitemap.urlset.url[1].video[0].view_count, isNotNull);
    expect(sitemap.urlset.url[1].video[0].rating, isNotNull);
    expect(sitemap.urlset.url[1].video[0].expiration_date, isNotNull);
    expect(sitemap.urlset.url[1].video[0].duration, isNotNull);
    expect(sitemap.urlset.url[1].video[0].player_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[0].content_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[0].description, isNotNull);
    expect(sitemap.urlset.url[1].video[0].thumbnail_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[0].title, isNotNull);
    expect(sitemap.urlset.url[1].video[1].live, isNotNull);
    expect(sitemap.urlset.url[1].video[1].uploader, isNotNull);
    expect(sitemap.urlset.url[1].video[1].requires_subscription, isNotNull);
    expect(sitemap.urlset.url[1].video[1].price, isNotNull);
    expect(sitemap.urlset.url[1].video[1].restriction, isNotNull);
    expect(sitemap.urlset.url[1].video[1].family_friendly, isNotNull);
    expect(sitemap.urlset.url[1].video[1].publication_date, isNotNull);
    expect(sitemap.urlset.url[1].video[1].view_count, isNotNull);
    expect(sitemap.urlset.url[1].video[1].rating, isNotNull);
    expect(sitemap.urlset.url[1].video[1].expiration_date, isNotNull);
    expect(sitemap.urlset.url[1].video[1].duration, isNotNull);
    expect(sitemap.urlset.url[1].video[1].player_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[1].content_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[1].description, isNotNull);
    expect(sitemap.urlset.url[1].video[1].thumbnail_loc, isNotNull);
    expect(sitemap.urlset.url[1].video[1].title, isNotNull);
  });

  test('process valid news sitemap', () {
    Sitemap sitemap = tested.process(_readFile("test/news/sitemap.xml"));
    expect(sitemap, isNotNull);
    expect(sitemap.urlset.url.length, 2);
    expect(sitemap.urlset.url[0].loc, isNotNull);
    expect(sitemap.urlset.url[0].news, isNotNull);
    expect(sitemap.urlset.url[0].news.length, 2);
    expect(sitemap.urlset.url[0].news[0].title, isNotNull);
    expect(sitemap.urlset.url[0].news[0].publication_date, isNotNull);
    expect(sitemap.urlset.url[0].news[0].publication, isNotNull);
    expect(sitemap.urlset.url[0].news[0].publication.name, isNotNull);
    expect(sitemap.urlset.url[0].news[0].publication.language, isNotNull);
    expect(sitemap.urlset.url[0].news[1].title, isNotNull);
    expect(sitemap.urlset.url[0].news[1].publication_date, isNotNull);
    expect(sitemap.urlset.url[0].news[1].publication, isNotNull);
    expect(sitemap.urlset.url[0].news[1].publication.name, isNotNull);
    expect(sitemap.urlset.url[0].news[1].publication.language, isNotNull);
    expect(sitemap.urlset.url[1].loc, isNotNull);
    expect(sitemap.urlset.url[1].news, isNotNull);
    expect(sitemap.urlset.url[1].news.length, 2);
    expect(sitemap.urlset.url[1].news[0].title, isNotNull);
    expect(sitemap.urlset.url[1].news[0].publication_date, isNotNull);
    expect(sitemap.urlset.url[1].news[0].publication, isNotNull);
    expect(sitemap.urlset.url[1].news[0].publication.language, isNotNull);
    expect(sitemap.urlset.url[1].news[0].publication.name, isNotNull);
    expect(sitemap.urlset.url[1].news[1].title, isNotNull);
    expect(sitemap.urlset.url[1].news[1].publication_date, isNotNull);
    expect(sitemap.urlset.url[1].news[1].publication, isNotNull);
    expect(sitemap.urlset.url[1].news[1].publication.language, isNotNull);
    expect(sitemap.urlset.url[1].news[1].publication.name, isNotNull);
  });

  test('process some single sitemaps', () {
    SitemapIndex sitemapIndex = tested.process(_readFile("test/single/sitemap_index.xml"));
    expect(sitemapIndex, isNotNull);
    expect(sitemapIndex.sitemapindex.sitemap.length, 1);
    Sitemap sitemap = tested.process(_readFile("test/single/sitemap.xml"));
    expect(sitemap, isNotNull);
    expect(sitemap.urlset.url.length, 1);
    expect(sitemap.urlset.url[0].news.length, 1);
    expect(sitemap.urlset.url[0].video.length, 1);
    expect(sitemap.urlset.url[0].image.length, 1);
  });

  test('process some random sitemaps', () {
    SitemapIndex sitemapIndex = tested.process(_readFile("test/random/sitemap-index.xml"));
    expect(sitemapIndex, isNotNull);
    Sitemap sitemap = tested.process(_readFile("test/random/attachment-sitemap.xml"));
    expect(sitemap, isNotNull);
    sitemap = tested.process(_readFile("test/random/page-sitemap.xml"));
    expect(sitemap, isNotNull);
    sitemap = tested.process(_readFile("test/random/post-sitemap.xml"));
    expect(sitemap, isNotNull);
  });
}
