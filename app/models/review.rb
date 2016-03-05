class Review < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }

  validates :name, presence: true
  validates :body, presence: true
  validates :relationship, presence: true
end
