require('spec_helper')

describe('visit the bands list page', {:type => :feature}) do
  it 'takes the user to the band list page' do
    visit('/')
    click_link('Bands')
    expect(page).to have_content('Bands You Follow')
  end
end

describe('visit the venues list page', {:type => :feature}) do
  it 'takes the user to the venues list page' do
    visit('/')
    click_link('Venues')
    expect(page).to have_content('Band Venues')
  end
end

describe('adding a band', {:type => :feature}) do
  it 'allows a user to add a band to the band tracker database' do
    visit('/bands')
    fill_in('name', :with => 'mouse rat')
    fill_in('category', :with => 'rock')
    click_button('Add Band')
    expect(page).to have_content('Mouse Rat')
  end
end

describe('adding a venue', {:type => :feature}) do
  it 'allows a user to add a venue to the band tracker database' do
    visit('/venues')
    fill_in('name', :with => 'stubbs')
    fill_in('city', :with => 'austin')
    select('TX', :from => 'state')
    click_button('Add Venue')
    expect(page).to have_content('Stubbs')
  end
end
