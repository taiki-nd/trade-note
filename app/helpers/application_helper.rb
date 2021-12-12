module ApplicationHelper

  def default_meta_tags
    {
      site: 'Trade-Note',
      title: 'トレードノート',
      reverse: true,
      charset: 'utf-8',
      description: 'トレードノートを作って自分の取引を分析することができるwebサイト！資産推移、勝率、プロフィットファクター、取引傾向を分析することができます。記事投稿も可能でアフィリエイトリンクを貼り付けて広告収入も得られます！',
      keywords: 'トレードノート,fx,投資,仮想通貨',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('logo.png') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('top.jpg'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@Trade__Note',
        image: image_url('top.jpg'),
      }
    }
  end

end
