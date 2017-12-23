require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do
  let!(:user) do
    User.create!(
      name: "Maryam Ghobadi",
      email: "talktoghobadi@gmail.com",
      username: "talktome",
      password: "abc123"
    )
  end

  before do
    # login
    visit login_path
    fill_in "Username:", with: "talktome"
    fill_in "Password:", with: "abc123"
    click_button "Submit"
  end

  it "displays their username" do
    expect(page).to have_content user.username
  end

  it "displays link to their spots page" do
    expect(page).to have_content "Start Spotting"
  end

end
