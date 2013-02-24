Given /^I am on "([^\"]*)"$/ do |page_name|
  visit "/"+page_name
end

Given /^I visit a tesis with "([^\"]*)","([^\"]*)"$/ do |prof, tesis|
   visit "/theses/"+prof+"?id2="+tesis
end

When /^I enter with the username "([^\"]*)"$/ do |username|
  visit root_path
  fill_in('email', :with => username)
  click_button("Login")
end

Then /^I press "([^\"]*)"$/ do |link|
  click_link link
end

Then /^I fill the thesis with "([^\"]*)","([^\"]*)"$/ do |title, description|
  fill_in('thesis_title', :with => title)
  fill_in('thesis_description', :with => description)
  click_button("Create Thesis")
end

Then /^press "([^\"]*)"$/ do |text|
  click_button(text)
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should be on (.+)$/ do |page_name|
  current_path.should == "/"+page_name
end

Then /^I cant see the button "([^\"]*)"$/ do |name|
  page.should_not have_button(name)
end

