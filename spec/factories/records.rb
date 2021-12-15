FactoryBot.define do
  factory :record do
    date              {Faker::Date.between(from: '2021-09-23', to: '20121-12-15')}
    pair_id           {Faker::Number.within(range: 2..50)}
    ashi_id           {Faker::Number.within(range: 2..10)}
    price_renge       {Faker::Number.between(from: -100, to: 100)}
    entry_basis       {Faker::Lorem.sentence}
    result_section_id {Faker::Number.within(range: 2..10)}
    result_content    {Faker::Lorem.sentence}

    association :user

  end
end


