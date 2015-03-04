# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
CSV.foreach("#{Rails.root}/db/cfc.csv") do |row| 
	Location.create!(program: row[0],
					latitude: row[1],
					longitude: row[2],
					address: row[3],
					zip: row[4],
					site: row[5],
					contact: row[7],
					email: row[8],
					school_Number: row[10],
					school: row[11],
					asep: row[14],
					sep: row[15],
					cost: row[16],
					scholarship_financial: row[17],
					transportation: row[18],
					bsep: row[20],
					website: row[21],
					hours: row[22],
					grade: row[23],
					phone: row[28])
end

Location.first.destroy