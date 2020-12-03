import 'package:sitemap_processor/sitemap_processor.dart';

void main() {
  // Initialize SitemapProcessor
  final SitemapProcessor processor = SitemapProcessor();

  // Process a sitemap index
  SitemapIndex sitemapIndex = processor.process(
      '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><sitemap><loc>http://www.example.com/sitemap1.xml.gz</loc></sitemap></sitemapindex>');
  print(sitemapIndex.sitemapindex.sitemap[0].loc);

  // Process a sitemap
  Sitemap sitemap = processor.process(
      '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><url><loc>http://www.example.com/</loc></url></urlset>');
  print(sitemap.urlset.url[0].loc);
}
