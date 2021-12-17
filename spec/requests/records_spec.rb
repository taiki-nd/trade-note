require 'rails_helper'
describe RecordsController, type: :request do

  before do
    @record = FactoryBot.create(:record)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get records_path
      expect(response.status).to eq 200
    end
    it 'indexアクションにリクエストするとレスポンスに投稿済みのrecordのpairが存在する' do 
      get records_path
      expect(response.body).to include(@record.pair.name)
    end
  end

  describe 'GET #show' do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get record_path(@record)
      expect(response.status).to eq 200
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecordのpairが存在する' do 
      get record_path(@record)
      expect(response.body).to include(@record.pair.name)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのdateが存在する' do 
      get record_path
      expect(response.body).to include(@record.date)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのhourが存在する' do 
      get record_path
      expect(response.body).to include(@record.hour.name)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのresult_sectionが存在する' do 
      get record_path
      expect(response.body).to include(@record.result_section.name)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのresult_contentが存在する' do 
      get record_path
      expect(response.body).to include(@record.result_content)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのprice_rengeが存在する' do 
      get record_path
      expect(response.body).to include(@record.price_renge)
    end
    it 'showアクションにリクエストするとレスポンスに投稿済みのrecodのashiが存在する' do 
      get record_path
      expect(response.body).to include(@record.ashi.name)
    end
    it 'showアクションにリクエストするとレスポンスにコメント一覧表示部分が存在する' do 
    end
  end 

end
