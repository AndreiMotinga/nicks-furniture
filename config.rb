# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :frontmatter_extensions, %w(.html .slim)

activate :directory_indexes
activate :dotenv

configure :development do
  activate :livereload
end

configure :build do
  activate :gzip
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = ENV["BUCKET"]
  s3_sync.region                     = 'us-west-2'
  s3_sync.aws_access_key_id          = ENV["AWS_ACCESS_KEY_ID"]
  s3_sync.aws_secret_access_key      = ENV["AWS_SECRET_ACCESS_KEY"]
  s3_sync.delete                     = false # We delete stray files by default.
  s3_sync.after_build                = false # We do not chain after the build step by default.
  s3_sync.prefer_gzip                = true
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = false
  s3_sync.acl                        = 'public-read'
  s3_sync.encryption                 = false
  s3_sync.prefix                     = ''
  s3_sync.version_bucket             = false
  s3_sync.index_document             = 'index.html'
  s3_sync.error_document             = '404.html'
end
