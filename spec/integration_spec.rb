require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe("form behavior", {:type => :feature}) do
  it("accept a new contact") do
    visit('/')
    fill_in('wd-text', :with => "Ugly")
    select("Adjective", :from => 'wd-class')
    click_button('Submit Word')
    click_on('Back Home')
    expect(page).to have_content("Ugly")
  end
end
