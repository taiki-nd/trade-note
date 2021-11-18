class LineMain < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '水平線' },
    { id: 3, name: 'トレンドライン' },
    { id: 4, name: 'フィボナッチリトレースメント' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end