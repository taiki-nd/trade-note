# アプリケーション名

Trade-Note

# URL

# アプリケーション概要

## 概要

fxtraders(https://fxtraders.jp)のリニューアルバージョン
取引記録の投稿をもとに分析し現状を把握できるアプリケーション

## 分析内容に関して

# リニューアル理由

# 利用方法

# 目指した課題解決

コロナ禍で投資を始めている人が多くいる中、その記録をつける人は少なく増やすべき資産を減らしている人が多いと予想されます。
本アプリでは、取引記録を一覧しまとめることで次の取引に生かすことができるだけでなく、
その記録を公開し他ユーザーから意見をもらいながら取引に生かすことができ、資産を増やすための手がかりになるものと考えます。

# 実装事項
## 取引記録
* 投稿
* 編集
* 削除
* 検索（gem, ransack）
* 画像投稿（gem, active storage）

## 記事投稿機能
* 投稿 (simpleMDE, redcarpet)
* 編集
* 削除
* 画像投稿（gem, active storage）

## コメント
* 投稿（ajax）
* 削除（ajax）

## ユーザー関連
* フォロー機能
* グラフ表示（gem, chartkick）
* メール認証機能 (google workspace)
* 管理者機能

## seo対策
* メタtag（gem, meta_tags）
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
* ページネーション
* 日本語対応（gem, rails-i18n
* 問い合わせ（ライン公式, font awesome）
* ハンバーガーメニュー
* OGPの設定（gem, meta-tags）
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


## er図
