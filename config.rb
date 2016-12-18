activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end
activate :directory_indexes
activate :relative_assets

set :css_dir, "assets/stylesheets"
set :markdown_engine, :redcarpet
set :markdown,
  autolink: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  smartypants: true,
  strikethrough: true,
  tables: true,
  with_toc_data: true

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

activate :data_source do |d|
  d.sources = [
    {
      alias: "table_1",
      path:  "https://api.airtable.com/v0/#{ENV["AIRTABLE_BASE_1"]}/#{ENV["AIRTABLE_TABLE_1"]}?api_key=#{ENV["AIRTABLE_API_KEY"]}",
      type:  :json
    }
  ]
end

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end
