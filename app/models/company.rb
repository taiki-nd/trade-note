class Company < ActiveHash::Base
  self.data = [
    { id: 1, name: 'company' },
    { id: 2, name: 'xm' },
    { id: 3, name: 'exness' },
    { id: 4, name: 'titan' },
    { id: 5, name: 'tradeview' },
  ]
 
   include ActiveHash::Associations
   has_many :advertisements
 
end