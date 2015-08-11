require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('locations we have been to path', {:type => :feature}) do
  it('accepts inputted location and saves to array') do
    visit('/')
    fill_in("location", :with => "Paris")
    click_button("Go baby!")
    expect(page).to have_content("newly added place is: Paris")
  end
end
