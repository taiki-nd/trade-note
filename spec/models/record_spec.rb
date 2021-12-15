require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe 'TradeNote新規' do

    context '作成できるとき' do
      it '必要事項が入力されている時' do
        expect(@record).to be_valid
      end
    end

    context '作成できないとき' do
      it 'dateが空では登録できない' do
        @record.date = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("日付を入力してください")
      end
      it 'ashiが1では登録できない' do
        @record.ashi_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("時間足を選択してください")
      end
      it 'pairが1では登録できない' do
        @record.pair_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("通貨ペアを選択してください")
      end
      it 'result_sectionが1では登録できない' do
        @record.result_section_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("勝敗理由を選択してください")
      end
      it 'price_rengeが空では登録できない' do
        @record.price_renge = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("獲得金額を入力してください")
      end
      it 'price_rengeが数値でない場合は登録できない' do
        @record.price_renge = 'eeeeee'
        @record.valid?
        expect(@record.errors.full_messages).to include("獲得金額は数値で入力してください")
      end
      it 'price_rengeが半角でない場合は登録できない' do
        @record.price_renge = '１０００'
        @record.valid?
        expect(@record.errors.full_messages).to include("獲得金額は数値で入力してください")
      end
      it 'ユーザーが紐付いていなければ記録できない' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
