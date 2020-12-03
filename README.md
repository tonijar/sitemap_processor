# sitemap_processor

A sitemap and sitemap index processor Dart package, converts from XML to an easier to manipulate object.

## Importing library
```dart
import 'package:sitemap_processor/sitemap_processor.dart';
```

## Process a sitemap index
```dart
final SitemapProcessor processor = SitemapProcessor();
SitemapIndex sitemapIndex = processor.process(sitemapIndexXmlString);
print(sitemapIndex.sitemapindex.sitemap[0].loc);
```

## Process a sitemap
```dart
final SitemapProcessor processor = SitemapProcessor();
Sitemap sitemap = processor.process(sitemapXmlString);
print(sitemap.urlset.url[0].loc);
```

## More info
* Sitemap and sitemap index protocol: https://www.sitemaps.org/protocol.html
* Dart JSON serialization: https://flutter.dev/docs/development/data-and-backend/json
* Sitemap format extensions: https://developers.google.com/search/docs/advanced/sitemaps/build-sitemap#sitemapformat
