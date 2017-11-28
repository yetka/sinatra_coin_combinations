require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user entry and returns the the smallest number of quarters, dimes, nickels, and pennies needed to make that change') do
    visit('/')
    fill_in('amount', :with => '57')
    click_button('Go!')
    expect(page).to have_content('You inputted amount is 57 pennies.
    It is equal to 2 quarters, 0 dimes, 1 nickels, 2 pennies.
    Return to home page')
  end
end
