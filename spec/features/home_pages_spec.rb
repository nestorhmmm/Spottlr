require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  it "has stuff in it" do
    #localhost:3000
    visit root_path
    #signup
    expect(page).to have_content "Sign Up"
    #login
    expect(page).to have_content "Login"
  end
end
