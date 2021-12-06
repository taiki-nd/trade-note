# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Record.create!(
    date: "2021-05-01",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..100),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-05-02",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..100),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-05-03",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..100),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-05-06",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..100),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-05-22",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-06-12",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-06-19",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-06-27",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-12",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-14",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-22",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-09-14",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-19",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-22",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-08-24",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-09-04",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-10-04",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-10-12",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-10-15",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-10-18",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-10-20",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-14",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-24",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-12-01",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-12-02",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-12-04",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 1
  )
end

5.times do
  Record.create!(
    date: "2021-11-14",
    hour_id: rand(2..5),
    pair_id: 43,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 2
  )
end

5.times do
  Record.create!(
    date: "2021-11-17",
    hour_id: rand(2..5),
    pair_id: 51,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 2
  )
end

5.times do
  Record.create!(
    date: "2021-11-22",
    hour_id: rand(2..5),
    pair_id: 14,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 2
  )
end

5.times do
  Record.create!(
    date: "2021-11-24",
    hour_id: rand(2..5),
    pair_id: 22,
    ashi_id: rand(2..5),
    order_id: rand(2..5),
    line_main_id: rand(2..5),
    line_sub_id: rand(2..5),
    indi_main_id: rand(2..5),
    indi_sub_id: rand(2..5),
    price_renge: rand(-100..150),
    entry_basis: "text text",
    result_content: "text text",
    result_section_id: rand(2..19),
    user_id: 2
  )
end

