class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '下書き保存' },
    { id: 2, name: '投稿する' }
  ]
 
   include ActiveHash::Associations
   has_many :posts
 
end