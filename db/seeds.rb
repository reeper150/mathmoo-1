# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992'},
    	  {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984'},
    	  {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
      	  {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'},
      	  {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'},
      	  {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'},
      	  {:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968'},
      	  {:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004'},
      	  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'},
      	  {:title => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000'},
  	 ]

movies.each do |movie|
  Movie.create!(movie)
end

Game.create(id: 1, created_at: "2013-05-15 23:53:49", updated_at: "2013-05-15 23:53:49", swf: nil, swf_file_name: "badpiggies.swf", name: "Bad Piggies", description: "Help the mean pigs from Angry Birds collect all of ...", category: "Other", age_group: "K-3", dimension_x: 960, dimension_y: 600, image: nil, feature_image: nil, developer: "Rovio Entertainment Ltd", instructions: "Use the mouse to select the pigs and device parts.", date_to_go_live: "2013-05-15", date_to_show_countdown: "2013-05-15", plays: 0, image_file_name: "thumbnail.png", feature_image_file_name: nil)

Game.create(id: 2, created_at: "2013-05-15 23:57:12", updated_at: "2013-05-15 23:57:12", swf: nil, swf_file_name: "575636_Penguin_OverlordsT2.swf", name: "Penguin Overlords", description: "Fight the evil turtle empire", category: "Skill", age_group: "3-6", dimension_x: 700, dimension_y: 540, image: nil, feature_image: nil, developer: "Christopher Gregorio", instructions: "Use your mouse", date_to_go_live: "2013-05-15", date_to_show_countdown: "2013-05-15", plays: 0, image_file_name: "icon.png", feature_image_file_name: "featureimage.png")

Frontpage.create(id: 2, created_at: "2013-05-15 23:57:23", updated_at: "2013-05-15 23:57:23", featured_game: 2)
