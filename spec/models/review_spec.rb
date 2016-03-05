require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '.all' do
    it 'should have the newest first' do
      old_review = FactoryGirl.create(:review, created_at: DateTime.yesterday)
      older_review =
        FactoryGirl.create(:review, created_at: DateTime.yesterday - 1.day)
      new_review = FactoryGirl.create(:review, created_at: DateTime.now)

      expect(described_class.all.to_a)
        .to eq([new_review, old_review, older_review])
    end
  end
end
