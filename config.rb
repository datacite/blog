###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# General configuration

activate :syntax

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Use sprockets for asset compilation
activate :sprockets
sprockets.append_path File.join(root, 'vendor', 'bower_components')

# Set markdown template engine
set :markdown_engine, :pandoc
set :markdown, smartypants: true,
               metadata: "link-citations",
               csl: "styles/apa.csl",
               bibliography: "data/references.yaml",
               lang: "en"

# put configuration variables into .env file
activate :dotenv

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def stage?
    ENV['RACK_ENV'] == "stage"
  end

  def sanitize(string)
    Sanitize.fragment(string).squish
  end

  def author_string(author)
    Array(author).map { |a| data.authors.fetch(a, {})[:name] }.to_sentence
  end

  def article_as_json(article)
    return "" unless article.data.doi.present?

    type = article.data.type.presence || "BlogPosting"
    url = ENV['SITE_URL'] + article.url
    id = article.data.doi.present? ? "https://doi.org/" + article.data.doi : url
    version = article.data.version.presence || "1.0"
    license = data.site.license.url || "https://creativecommons.org/licenses/by/4.0/"



    author = Array(article.data.author).map do |a|
      au = data.authors.fetch(a, {})
      { "@type" => "Person",
        "@id" => "http://orcid.org/" + au[:orcid],
        "givenName" => au[:given],
        "familyName" => au[:family] }
    end

    { "@context" => "http://schema.org",
      "@type" => type,
      "@id" => id,
      "name" => article.data.title,
      "url" => url,
      "author" => author,
      "publisher" => ENV['SITE_TITLE'],
      "datePublished" => article.data.date.iso8601,
      "license" => data.site.license.url,
      "image" => article.data.image.presence,
      "keywords" => article.data.tags.join(", "),
      "version" => version,
      "description" => page_description(article),
      "license" => license
    }.to_json
  end

  def page_title(page)
    return ENV['SITE_TITLE'] if page.nil? || page.data.doi.nil?

    page.data.title
  end

  def page_image(page)
    return "/images/datacite.png" if page.nil? || page.data.image.nil?

    page.data.image
  end

  def page_description(page)
    return ENV['SITE_DESCRIPTION'] if page.nil? || page.data.doi.nil?

    html = page.render({layout: false})
    Bergamasco::Summarize.summary_from_html(html)
  end
end

activate :blog do |blog|
  blog.sources = "posts/{title}.html"
  blog.permalink = "{title}"
end

activate :directory_indexes

page "/feed.xml", layout: false

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
