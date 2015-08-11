require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('locations we have been to path', {:type => :feature}) do
  it('accepts inputted location and saves to array') do
    visit('/')
    fill_in("our_place", :with => "Paris")
    click_button("Go baby!")
    expect(page).to have_content("Paris")
  end
end
