require 'rails_helper'

RSpec.feature "UserRegistersOnSignUpPages", type: :feature do
  it "works" do
    #Sign Up
    visit new_user_path
    #Fill in Name
    fill_in "Name", with: "Maryam"
    #Fill in email
    fill_in "Email", with: "talktoghobadi@gmail.com"
    #Fill in username
    fill_in "Username", with: "talktome"
    #Fill in Password
    fill_in "Password", with: "abc123"
    #Fill in Password Confirmation
    fill_in "Password confirmation", with: "abc123"
    # click on SignUp button
    click_button "Sign Up"
  end

end
