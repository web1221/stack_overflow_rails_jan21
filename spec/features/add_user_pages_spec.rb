require 'rails_helper'

describe "Add a user" do
  it "Creates a new user with sign up" do
    visit signup_path
    fill_in 'Email', :with => 'ea@v.com'
    fill_in 'Password', :with => 'cats'
    fill_in 'Password confirmation', :with => 'cats'
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
    # expect(page).to have_content 'This is a user'
  end
  it "Signs in a user" do
    visit signup_path
    fill_in 'Email', :with => 'ela@v.com'
    fill_in 'Password', :with => 'cats'
    fill_in 'Password confirmation', :with => 'cats'
    click_on 'Sign Up'
    click_on 'Sign out'
    click_on 'Sign-in'
    fill_in 'Email', :with => 'ela@v.com'
    fill_in 'Password', :with => 'cats'
    click_on 'Sign in'
    # save_and_open_page
    expect(page).to have_content "You've signed in"
    # expect(page).to have_content 'This is a user'
  end
end
