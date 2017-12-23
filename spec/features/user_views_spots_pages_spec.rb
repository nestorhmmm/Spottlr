require 'rails_helper'

RSpec.feature "UserViewsSpotsPages", type: :feature, js: true do
  let!(:user) do
    User.create!(
      name: "Maryam Ghobadi",
      email: "talktoghobadi@gmail.com",
      username: "talktome",
      password: "abc123"
    )
  end

  let!(:spot) do
    user.spots.create!(
      is_open: true,
      latitude: 25.803006999999997,
      longitude: -80.20438140000002,
    )
  end

  before do
    # login
    visit login_path
    fill_in "Username:", with: "talktome"
    fill_in "Password:", with: "abc123"
    click_button "Submit"

    click_link "Start Spotting"
    click_button "Track Me"
  end

  it "renders a map" do
    expect(page).to have_selector('.gm-style')
  end

  it "shows spots (or pins or whatever you want to call it)" do
    js_spot = page.evaluate_script('gon.spots[0]')
    # js timestamps != Rails timestamps
    js_spot["created_at"] = spot.created_at
    js_spot["updated_at"] = spot.updated_at
    expect(js_spot).to eq(spot.attributes)
  end
end
