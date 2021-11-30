class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'fx' },
    { id: 3, name: '仮想通貨' },
    { id: 4, name: '株' },
    { id: 5, name: 'トレードノート' },
    { id: 6, name: 'トレード手法' },
    { id: 7, name: 'トレード日誌' },
    { id: 8, name: '証券会社、取引所' },
    { id: 9, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :posts
 
end