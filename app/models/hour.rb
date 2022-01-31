class Hour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '0' },
    { id: 3, name: '1' },
    { id: 4, name: '2' },
    { id: 5, name: '3' },
    { id: 6, name: '4' },
    { id: 7, name: '5' },
    { id: 8, name: '6' },
    { id: 9, name: '7' },
    { id: 10, name: '8' },
    { id: 11, name: '9' },
    { id: 12, name: '10' },
    { id: 13, name: '11' },
    { id: 14, name: '12' },
    { id: 15, name: '13' },
    { id: 16, name: '14' },
    { id: 17, name: '15' },
    { id: 18, name: '16' },
    { id: 19, name: '17' },
    { id: 20, name: '18' },
    { id: 21, name: '19' },
    { id: 22, name: '20' },
    { id: 23, name: '21' },
    { id: 24, name: '22' },
    { id: 25, name: '23' },
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end