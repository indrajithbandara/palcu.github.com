require "jekyll-import";
    JekyllImport::Importers::Blogger.run({
      "source"                => "/Users/alexp/Downloads/blog-03-17-2015.xml",
      "no-blogger-info"       => false, # not to leave blogger-URL info (id and old URL) in the front matter
      "replace-internal-link" => false, # replace internal links using the post_url liquid tag.
    })
