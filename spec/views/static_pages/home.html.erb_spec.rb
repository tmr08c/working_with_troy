require 'spec_helper'

describe 'static_pages/home.html.erb' do
  it 'should be in a hero' do
    render

    expect(rendered).to have_css('.hero')
  end

  it 'should have a link to write a review' do
    render

    expect(rendered).to have_link('Write a Review!', href: new_review_path)
  end

  it 'have a link to view existing reviws' do
    render

    expect(rendered).to have_link(
      'inspiration-link',
      href: reviews_path
    )
  end
end
