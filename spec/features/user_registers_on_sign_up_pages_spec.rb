require 'rails_helper'

RSpec.feature "UserRegistersOnSignUpPages", type: :feature do
  it "has stuff in it" do
    #Sign Up
    visit new_user_path
    #Fill in Name
    fill_in "Name", with: "Maryam"
    #Fill in email
    fill_in "email", with: "talktoghobadi@gmail.com"
    #Fill in username
    fill_in "username", with: "talktome"
    #Fill in Password
    fill_in "password", with: "abc123"
    #Fill in Password Confirmation
    fill_in "password confirmation", with: "abc123"
    # click on SignUp button
    click_button "Sign Up"
  end

end
