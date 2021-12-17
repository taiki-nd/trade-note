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
end
