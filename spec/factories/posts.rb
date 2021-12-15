FactoryBot.define do
  factory :post do
    title             {Faker::Lorem.word}
    category_id       {Faker::Number.within(range: 2..5)}
    content           {Faker::Lorem.sentence}
    description       {Faker::Lorem.sentence}
    keyword1          {Faker::Lorem.word}
    keyword2          {Faker::Lorem.word}
    keyword3          {Faker::Lorem.word}

    association :user

  end
end