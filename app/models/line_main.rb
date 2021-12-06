class LineMain < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '水平線' },
    { id: 3, name: 'トレンドライン' },
    { id: 4, name: 'チャネルライン' },
    { id: 5, name: 'フィボナッチリトレースメント' },
    { id: 6, name: 'フィボナッチエクスパンション' },
    { id: 7, name: 'フィボナッチタイムゾーン' },
    { id: 8, name: 'フィボナッチリアーク' },
    { id: 9, name: 'フィボナッチファン' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end