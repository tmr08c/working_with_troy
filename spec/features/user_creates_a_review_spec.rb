require "spec_helper"

feature "User creates a review" do
  scenario "a user leaves a review" do
    visit new_review_path

    fill_in "What's it like working with Troy", with: "super cool"
    fill_in "Name", with: "John Doe"
    fill_in "Relationship", with: "Co-worker"

    click_button "Leave Review"

    expect(current_path).to eq "/reviews"

    expect(page).to have_selector ".flash-notice"
    expect(page).to have_text "Thank you for your review!"

    expect(page).to have_text "super cool"
    expect(page).to have_text "John Doe"
    expect(page).to have_text "Co-worker"
  end
end
