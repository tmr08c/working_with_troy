require 'spec_helper'

feature 'User uses navigation' do
  scenario 'user wants to write a review' do
    visit root_path

    click_link 'Write a Review!'

    expect(current_path).to eq '/reviews/new'
  end

  scenario 'user wants to view reviews' do
    visit root_path

    click_link 'Read Reviews'

    expect(current_path).to eq '/reviews'
  end
end
