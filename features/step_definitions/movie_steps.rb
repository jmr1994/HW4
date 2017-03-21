Given /^the following movies exist:$/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movie_name, movie_director|
  movie = Movie.find_by_title(movie_name)
  expect(movie.director).to eq movie_director
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|

  regexp = /#{e1}.*#{e2}/m  #m make dot match newlines
  expect(page.body).to match(regexp)
end

