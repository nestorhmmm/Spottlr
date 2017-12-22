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
    visit user_path(user)
  end

  it "displays their name" do
    visit user_path(user)
    expect(page).to have_content user.name
  end

  it "displays their email" do
    expect(page).to have_content user.email
  end

  it "displays their username" do
    expect(page).to have_content user.username
  end

  it "displays their spots page" do
    save_and_open_page
    expect(page).to have_content user.spots
  end

end
