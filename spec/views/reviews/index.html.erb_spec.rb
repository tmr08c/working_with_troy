require "spec_helper"

describe "reviews/index" do
  context "when there are reviews" do
    it "should have the review information listed" do
      review = FactoryGirl.build_stubbed(
        :review,
        name: "name",
        body: "body",
        relationship: "besties"
      )
      assign(:reviews, [review])
      render

      expect(rendered).to have_text("name")
      expect(rendered).to have_text("body")
      expect(rendered).to have_text("besties")
    end
  end
end
