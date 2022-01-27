# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://trade-note.jp"

SitemapGenerator::Sitemap.create do

  add posts_path, changefreq: 'always'
  Post.find_each do |post|
    add post_path(post), changefreq: 'daily', lastmod: post.updated_at
  end

  User.find_each do |user|
    add user_path(user), changefreq: 'daily', lastmod: user.updated_at
  end

  add root_path, changefreq: 'always'
  add privacy_policy_path, changefreq: 'monthly'
  add disclaimer_path, changefreq: 'monthly'
  add lp_path, changefreq: 'monthly'
end
