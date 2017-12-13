require 'rails_helper'

describe "when a user visits /" do
  it "and it fills the form with 80203" do
    visit '/'

    fill_in :q, with: '80203'

    click_on "Locate"

    expect(current_path).to eq("/search")
    expect(page).to have_content(10)
    expect(page).to have_content("UDR")
    expect(page).to have_content("800 Acoma St")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("0.31422")
    expect(page).to have_content("24 hours daily")

  end
end
