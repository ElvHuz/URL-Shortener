When(/^I visit the URL creation side$/) do
  visit "/shortener/create"
end

When(/^I fill into the URL field "(.*?)"$/) do |url|
  fill_in('url', :with => url)
end
When(/^I submit the form$/) do
  click_button("Create")
end

Then(/^I should get back following Link: "(.*?)"$/) do |url|
  page.should have_selector('.alert') do |part|
    part.should have_content("Link successfully created!")
    part.should have_contetn(url)
  end
end
