Given /^I am on (.+)$/ do |page_name|
  visit "/"+page_name
end

When /^I create a book with name "([^\"]*)"$/ do |search|
  visit "/books/new"
  fill_in('book_name', :with => "Libro 1")
  fill_in('book_author', :with => "Autor 1")
  fill_in('book_isbn', :with => "1")
  fill_in('book_totalRanking', :with => "0")
  fill_in('book_numberRanking', :with => "0")
  click_button("Create Book")
end 

When /^I try to search a book with "([^\"]*)"$/ do |search|
  fill_in('busqueda', :with => search)
  click_button("Buscar")
end 

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should be on (.+)$/ do |page_name|
  current_path.should == "/"+page_name
end


