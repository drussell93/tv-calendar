# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shows = [{:title => 'The Flash', :start_time =>'1400', :end_time =>'1500', :date => '10.24.2017', :description =>'Availible: Netflix, and nothing else matters, right?'},
         {:title => 'The Meaning of Life', :start_time => '1600', :end_time => '1800', :date => '10.1.2017', :description =>'Monty Python.  You know the one'},
         {:title => 'Lucifer', :start_time => '1500', :end_time => '1700', :date => '10.23.2017', :description =>'Availible Mondays, TNT, I think?'},
         {:title => 'Spirited Away', :start_time => '0900', :end_time => '1100',:date => '12.5.2017', :description =>'Movie by Miyazaki'},
         {:title => 'A Series of Unfortunate Events', :start_time =>'0000', :end_time =>'2359', :date => '2.1.2018', :description =>'Season 2, Availible: Netflix'}
        ]
        
show.each do |show|
    Show.create!(show)
end