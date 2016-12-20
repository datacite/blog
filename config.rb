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
