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
    author = Array(article.data.author).map do |a|
      au = data.authors.fetch(a, {})
      { "given" => au[:given],
        "family" => au[:family],
        "orcid" => au[:orcid] }
    end

    { "url" => ENV['SITE_URL'] + article.url,
      "author" => author,
      "title" => article.data.title,
      "container-title" => ENV['SITE_TITLE'],
      "issued" => article.data.date.iso8601,
      "license" => data.site.license.url,
      "image" => article.data.image.presence,
      "tags" => article.data.tags,
      "description" => sanitize(article.summary)
    }.to_json
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
