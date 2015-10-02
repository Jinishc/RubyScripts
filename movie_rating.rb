movies = {
  Rudy: 4,
  Interstellar: 3,
  Invictus: 3
}

puts "Welcome to your own movie Hash. You can add, update, display or delete movies and its ratings."
puts "== Type 'add' to add a movie =="
puts "== Type 'update' to update a movie =="
puts "== Type 'display' to display all movies =="
puts "== Type 'delete' to delete a movie =="

#so that the text case becomes harmless
choice = gets.chomp.downcase


case choice

#adding a movie.
when 'add'
  puts "Enter the name of the Movie."
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
  
#udpating and entry.
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
  
#displaying the hash.
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end

#deleting an entry.
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted."
  end
else
  puts "Sorry, please try again with the correct keyword."
end
