class Company < ActiveHash::Base
  self.data = [
    { id: 1, name: 'company' },
    { id: 2, name: 'XM' },
    { id: 3, name: 'EXNESS' },
    { id: 4, name: 'TitanFx' },
    { id: 5, name: 'Tradeview' },
  ]
 
   include ActiveHash::Associations
   has_many :advertisements
 
end