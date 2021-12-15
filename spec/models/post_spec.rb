require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '記事新規' do

    context '作成できるとき' do
      it '必要事項が入力されている時' do
        expect(@post).to be_valid
      end
    end

    context '作成できないとき' do
      it 'titleが空では登録できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'categoryが1では登録できない' do
        @post.category_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("カテゴリーを選択してください")
      end
      it 'keyword1が空では登録できない' do
        @post.keyword1 = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("キーワードを入力してください")
      end
      it 'keyword2が空では登録できない' do
        @post.keyword2 = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("キーワードを入力してください")
      end
      it 'keyword3が空では登録できない' do
        @post.keyword3 = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("キーワードを入力してください")
      end
      it 'descriptionが空では登録できない' do
        @post.description = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("ディスクリプションを入力してください")
      end
      it 'ユーザーが紐付いていなければ記録できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
