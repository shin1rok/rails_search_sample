require 'csv'

Prefecture.destroy_all if Prefecture.exists?
prefectures_table = CSV.table('db/csv/prefectures.csv')
prefectures_table.each do |row|
  Prefecture.create!(id:   row[:code],
                     name: row[:name])
end
