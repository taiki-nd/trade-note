# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://trade-note.jp"

  add records_path, changefreq: 'always'
  Record.find_each do |record|
    add record_path(record), changefreq: 'always', lastmod: record.updated_at
  end

  add posts_path, changefreq: 'always'
  Rule.find_each do |post|
    add post_path(post), changefreq: 'always', lastmod: post.updated_at
  end

  User.find_each do |user|, changefreq: 'always'
    add user_path(user), changefreq: 'always', lastmod: user.updated_at
  end

  add root_path, changefreq: 'monthly'
  add privacy_policy_path, changefreq: 'monthly'
  add disclaimer_path, changefreq: 'monthly'

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
