# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Record.create!(
    date: "2020-11-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 25,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2020-11-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -15,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2020-11-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 20,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2020-11-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -22,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-04-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 25,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-04-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -15,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-04-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 20,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-04-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -22,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 25,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-01",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -15,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: 20,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-05",
    hour_id: rand(2..5),
    pair_id: rand(2..5),
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: -22,
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..5),
    user_id: 1
  )
end