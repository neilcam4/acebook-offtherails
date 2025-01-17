require 'rails_helper'
require 'spec_helper'

RSpec.feature "Login", type: :feature do
  scenario "User can view profile page" do
    visit signup_path
    fill_in "First Name", with: "Superman"
    fill_in "Last Name", with:" Kent"
    fill_in "Email", with: "superman@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Confirm Password", with: "password"
    click_button "Sign Up"
    visit login_path
    fill_in "Email", with: "superman@gmail.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content("Your posts")
    click_button "Profile Page"
    expect(page).to have_content('Profile Page')
  end
end
