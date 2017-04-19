require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('calculates scrabble score based on user inputted word') do
    visit('/')
    fill_in('scrabble', :with => 'CAT')
    click_button()
    expect(page).to have_content(5)
  end
end
