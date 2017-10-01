Given("I navigate to the index") do
  root_path
end

Then(/^I should be on the calendar page$/) do
  expect(page.current_path).to eq calendar_index_path
end


Then(/^I should see a calender$/) do
  expect(page).to have_css '.simple-calendar'
end

Then(/^I should( not)? see a calendar link "([^"]*)" at ([^"]*)$/) do |negate, time, date|
  section = find('.today')
  if negate
    expect(section.has_css? 'a', text: time).to eq false
  else
    expect(section.has_css? 'a', text: time).to eq true
  end
end