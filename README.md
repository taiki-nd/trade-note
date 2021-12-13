# アプリケーション名

Trade-Note

# URL

https://trade-note.jp

# アプリケーション概要

## 目指した課題解決

コロナ禍で投資を始めている人が多くいる中、その記録をつける人は少なく増やすべき資産を減らしている人が多いと予想されます。
本アプリでは、取引記録を一覧しまとめることで次の取引に生かすことができるだけでなく、その記録を公開し他ユーザーから意見をもらいながら取引に生かすことができ、資産を増やすための手がかりになるものと考えます。

## 概要

fxtraders(https://fxtraders.jp)のリニューアルバージョンになります。
取引記録の投稿をもとに分析し現状を把握できるアプリケーションで、記事の投稿することも可能です。simpleMDEの導入により。記事作成が柔軟になっているので。アフィリエイトリンクを貼り付け収益化することも可能です。

## リニューアル理由
fxtradersを実際に利用する中で、いくつかの改善点があると感じたからです。それらを解決しbefore, afterを比較するために新たにアプリを立ち上げました。特に以下を意識して解決しました。
* 統一感がない（リンクやボタンなど）
→ボタン、リンク、テーブルに与えるstyleを統一化してサイト全体の統一感をあげました。
* 分析用のグラフが見づらい、物足りない
→データベースから配列を組み直してUIを向上させました。
* 柔軟な記事が書けない
→simpleMDEの導入で解決しました。newアクションの際にデフォルト値として与えらればよかったのですが、text型にはデフォルト値として与えられないため、マークダウンの書き方を説明するページも別途用意し初めての人でも書けるように工夫しました。
* 不必要な情報を入力しなくてはならない（recordモデルにおける勝敗など）
→獲得金額の符号（+,−）で勝敗を判断するようにしました（獲得金額は公開されません）。

## 分析内容に関して
* 資産推移（投稿者本人のみ閲覧可）
[![Image from Gyazo](https://i.gyazo.com/fd6b39337d26c7f5c5bb91084a3cc233.png)](https://gyazo.com/fd6b39337d26c7f5c5bb91084a3cc233)
* 勝率とプロフィットファクター
[![Image from Gyazo](https://i.gyazo.com/2dcea2c36d6b1d6abd26040ac066374a.png)](https://gyazo.com/2dcea2c36d6b1d6abd26040ac066374a)
* 取引傾向と改善点の分析
[![Image from Gyazo](https://i.gyazo.com/20e34b248747036e16c5070ae2025609.png)](https://gyazo.com/20e34b248747036e16c5070ae2025609)

# 利用方法
1. 新規登録
2. メールの確認及びメール認証
3. ログイン
4. ハンバーガーメニューから「新規TradeNoteの作成」または「新規記事の作成」
5. 必要情報を入力し投稿する

# 実装事項
## 取引記録
* 投稿
* 編集
* 削除
* 検索（gem, ransack）
* 複数画像投稿（gem, active storage）

## 記事投稿機能
* 投稿 (simpleMDE, redcarpet)
[![Image from Gyazo](https://i.gyazo.com/5c76403410f133e69fc0c4dd17d37751.jpg)](https://gyazo.com/5c76403410f133e69fc0c4dd17d37751)
* 編集
* 削除
* 画像投稿（gem, active storage）
* 下書き保存機能

## コメント
* 投稿（ajax）
* 削除（ajax）

## ユーザー関連
* フォロー機能
* グラフ表示（gem, chartkick）
[![Image from Gyazo](https://i.gyazo.com/fd6b39337d26c7f5c5bb91084a3cc233.png)](https://gyazo.com/fd6b39337d26c7f5c5bb91084a3cc233)
[![Image from Gyazo](https://i.gyazo.com/2dcea2c36d6b1d6abd26040ac066374a.png)](https://gyazo.com/2dcea2c36d6b1d6abd26040ac066374a)
[![Image from Gyazo](https://i.gyazo.com/20e34b248747036e16c5070ae2025609.png)](https://gyazo.com/20e34b248747036e16c5070ae2025609)
* メール認証機能 (google workspace)
[![Image from Gyazo](https://i.gyazo.com/b3f9f9e1c0aaf43cc5e9eab3cc1330c8.png)](https://gyazo.com/b3f9f9e1c0aaf43cc5e9eab3cc1330c8)
* 管理者機能

## seo対策
* メタtag（gem, meta_tags）
* OGPの設定（gem, meta-tags)
[![Image from Gyazo](https://i.gyazo.com/6cfb75b0221c38be1efde2885c56ce62.png)](https://gyazo.com/6cfb75b0221c38be1efde2885c56ce62)
* ぱんクズリスト（gem, gretel）
* サイトマップ（gem, sitemap_generator）
* サイトマップの自動更新（gem, whenever）

## デプロイ
* aws（ec2, s3, route53）
* mysql（maria DB）
* Unicorn
* Nginx
* 自動デプロイ（gem, Capistrano）
* ssl証明（AWS, ACM）

## その他
* ページネーション(オリジナルデザイン)
[![Image from Gyazo](https://i.gyazo.com/11daceb052221c995bcdbb4af96543d9.png)](https://gyazo.com/11daceb052221c995bcdbb4af96543d9)
* 日本語対応（gem, rails-i18n)
[![Image from Gyazo](https://i.gyazo.com/881e8d0bb7f407091930854ea1537a0d.png)](https://gyazo.com/881e8d0bb7f407091930854ea1537a0d)
* 問い合わせ（ライン公式, font awesome）
[![Image from Gyazo](https://i.gyazo.com/9b62f008a3debed18c9cb61767ee905a.png)](https://gyazo.com/9b62f008a3debed18c9cb61767ee905a)
* ハンバーガーメニュー
* レスポンシブ対応


# テーブル設計

## user テーブル

| Column             | Type       | Options                  |
| ------------------ | ---------- | ------------------------ |
| name               | string     | null: false              |
| email              | string     | null: false, unique:true |
| encrypted_password | string     | null: false              |
| admin              | boolean    | default: false           |

### Association

* has_many :records
* has_many :rules
* has_many :relationships
* has_many :followings, through: :relationships, source: :follow
* has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
* has_many :followers, through: :reverse_of_relationships, source: :user

## record テーブル 

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| date              | date       | null: false                    |
| ashi_id           | integer    | null: false                    |
| kind_id           | integer    | null: false                    |
| pair_id           | integer    | null: false                    |
| indi_main_id      | integer    | null: false                    |
| indi_sub_id       | integer    | null: false                    |
| line_main_id      | integer    | null: false                    |
| line_sub_id       | integer    | null: false                    |
| price_renge       | float      | null: false                    |
| entry_basis       | text       | null: false                    |
| order_id          | integer    | null: false                    |
| result_section_id | integer    | null: false                    |
| result_content    | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

### association

* belongs_to :user
* has_many :comment_records

## post テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| content          | text       | null: false                    |
| category_id      | integer    | null: false                    |
| status_id        | integer    | null: false                    |
| keyword1         | string     | null: false                    |
| keyword2         | string     | null: false                    |
| keyword3         | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user
* has_many :comment_rules

## comment_record テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| record | references | null: false, foreign_key: true |

### Association

* belongs_to :record
* belongs_to :user

## comment_post テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| record | references | null: false, foreign_key: true |

### Association

* belongs_to :rule
* belongs_to :user

## follow テーブル

| Column    | Type       | Options                           |
| --------- | ---------- | --------------------------------- |
| follow_id | references | foreign_key: { to_table: :users } |
| user_id   | references | null: false, foreign_key: true    |

### Association

* belongs_to :record
* belongs_to :method

## advertisement テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| img_url    | string  | null: false |
| af_link    | string  | null: false |
| ad_rate_id | integer | null: false |
| company_id | integer | null: false |
| content    | text    | null: false |


## er図

[![Image from Gyazo](https://i.gyazo.com/8e28165b64a2e89b1f3127d7667abfd3.png)](https://gyazo.com/8e28165b64a2e89b1f3127d7667abfd3)

# アプリをつくてみて
今回はリニューアルでの作成でしたが、初めて実装することも多くまるっきり新しいアプリを作っている感じがしました。

記事作成に関してはActionTextかMarkdown方式かで迷ったためミニアプリを作成するなどといった検証アプリも作成しました。以下に作ったミニアプリを紹介します。
* ActionText【[github](https://github.com/taiki-nd/action-text)】【[Qiita](https://qiita.com/taiki-nd/items/556b804fc367ba30ca15)】
* Markdown【[github](https://github.com/taiki-nd/markdown-blog)】【[Qiita](https://qiita.com/taiki-nd/items/e436dd90700787cead1e)】
* Pagination【[github](https://github.com/taiki-nd/kaminari-design)】【[Qiita](https://qiita.com/taiki-nd/items/cdcaec9ec6964d6c27ce)】

UI, UXに物足りないと感じてはじめたリニューアルでしたが、比べてみるとコードがとても読みやすくなっていました。
また、方針も最初からできたいたので非常にスムースに実装を進めることができました。