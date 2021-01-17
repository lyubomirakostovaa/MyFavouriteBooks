# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Seed the MyFavouriteBooks DB with some books.
more_books = [
    {:title => 'Pride and Prejudice', :genre => 'Romance', :publish_date => '25-Nov-1992'},
    {:title => 'Don Quixote', :genre => 'Drama', :publish_date => '21-Jul-1989'},
    {:title => 'A Promised Land', :genre => 'Mystery', :publish_date => '10-Aug-2011'},
    {:title => 'The Golden Compass', :genre => 'Action and Adventure', :publish_date => '12-Jun-1981'},
    {:title => 'To Kill a Mockingbird', :genre => 'Horror', :publish_date => '15-Nov-1999'}
   ]
   
   more_books.each do |book|
    Book.create!(book)
   end
   