require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('shopping cost calculator',{:type => :feature}) do
  it "takes in width, length, height, weight and delivery speed and returns the total cost of shipment" do
    visit('/')
    fill_in('width', :with => 3)
    fill_in('length', :with => 3)
    fill_in('height', :with => 2)
    fill_in('weight', :with => 10)
    select '1', :from => "speed"
    click_button('Submit')
    expect(page).to have_content(30)
  end
end
