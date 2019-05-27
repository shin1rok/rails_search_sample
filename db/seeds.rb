require 'csv'

User.destroy_all if User.exists?
Prefecture.destroy_all if Prefecture.exists?
prefectures_table = CSV.table('db/csv/prefectures.csv')
prefectures_table.each do |row|
  Prefecture.create!(id:   row[:code],
                     name: row[:name])
end

100.times do |i|
  User.create!(name:           "サンプルユーザ#{i}",
               gender:         [0, 1, 2, 9].sample,
               birthday:       Date.new(1990, 1,1).since(i.days),
               prefecture_id: (1..47).to_a.sample)
end


